<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();
include("../config/connect.php");
include ("../includes/num_k_m_count.php");

// if user not logged in go index page or login
if(!isset($_SESSION['Username'])){
    header("location: ../index");
}

// check if user is an admin or naot to access dashboard
if ($_SESSION['admin'] != '1') {
    if ($_SESSION['admin'] != '2') {
        header("location: ../index");
    }
}

// this to make dashboard 'Users' link active
$urlP='Classes';

// set check path var
if (is_dir("imgs/")) {
    $dircheckPath = "";
}elseif (is_dir("../imgs/")) {
    $dircheckPath = "../";
}elseif (is_dir("../../imgs/")) {
    $dircheckPath = "../../";
}
// get var's
$ed = trim(filter_var(htmlspecialchars($_GET['ed']),FILTER_SANITIZE_STRING));
// update
$db_username = trim(filter_var(htmlspecialchars($_POST['username']),FILTER_SANITIZE_STRING));
if(isset($_POST['submit_user'])){
    $addUser = $conn->prepare("SELECT signup.id from signup where Username=:db_username");
    $addUser->bindParam(':db_username',$db_username,PDO::PARAM_STR);
    $addUser->execute();
    while($row = $addUser->fetch(PDO::FETCH_ASSOC)){
        $user_id = $row['id'];
    }
    $addUser = $conn->prepare("SELECT signup.id from signup,mystudy where signup.id=mystudy.id and mystudy.class_id=:ed and signup.Username=:db_username");
    $addUser->bindParam(':db_username',$db_username,PDO::PARAM_STR);
    $addUser->bindParam(':ed',$ed,PDO::PARAM_STR);
    $addUser->execute();
    while($row = $addUser->fetch(PDO::FETCH_ASSOC)){
        $user_id_compare = $row['id'];
    }
    if(!empty($user_id) and $user_id_compare !== $user_id){
        $addUser = $conn->prepare("INSERT INTO mystudy values (:ed,:user_id)");
        $addUser->bindParam(':user_id',$user_id,PDO::PARAM_STR);
        $addUser->bindParam(':ed',$ed,PDO::PARAM_STR);
        $addUser->execute();
    }else{
        $add_result = "<p class='alertRed'>False to add...</p>";
    }
}
// ================================================================================
// get information of username and put it into fields as default 
?>
<html dir="<?php echo lang('html_dir'); ?>">
<head>
    <title><? echo lang('dashboard'); ?> | HustWeb</title>
    <admin charset="UTF-8">
    <admin name="description" content="HustWeb is a social network platform helps you meet new friends and stay connected with your family and with who you are interested anytime anywhere.">
    <meta name="keywords" content="social network,social media,HustWeb,meet,free platform">
    <meta name="author" content="Munaf Aqeel Mahdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "../includes/head_imports_main.php";?>
</head>
<body>
<?php include "../includes/navbar_main.php"; ?>
<div align="center" style="margin-top: 54px; padding: 3%;">
<div class="dashboard_box" style="text-align: <? echo lang('textAlign'); ?>">
    <div class="dashboard_boxD1">
        <ul>
            <li>
                <a href="index?adb=General">
                    <p class="<? if($urlP=='General' or $urlP==''){echo'dboard_lActive';} ?>"><? echo lang('general'); ?></p>
                </a>
            </li>
            <li>
                <a href="index?adb=verify">
                    <p class="<? if($urlP=='verify'){echo'dboard_lActive';} ?>"><? echo lang('verify_badge'); ?></p>
                </a>
            </li>
            <li>
                <a href="index?adb=Users">
                    <p class="<? if($urlP=='Users'){echo'dboard_lActive';} ?>"><? echo lang('users'); ?></p>
                </a>
            </li>
            <li>
                <a href="index?adb=Classes">
                    <p class="<? if($urlP=='Classes'){echo'dboard_lActive';} ?>">Classes</p>
                </a>
            </li>
            <li>
                <a href="index?adb=Support_box">
                    <p class="<? if($urlP=='Support_box'){echo'dboard_lActive';} ?>"><? echo lang('supportBox'); ?></p>
                </a>
            </li>
        </ul>
    </div>
    <div class="dashboard_boxD2">
    <!--///////////////User Actions/////////////////////-->
    <p class="dashboard_path"><a href="index?adb=General"><? echo lang('dashboard'); ?></a> / <a href="index?adb=Classes">Classes</a> / UsersInClass</p>
    <br/>
    <form action="" method="post">
        <table class="dashboard_UsersTable">
            <tr>
                <td><input style = "width: 150px;
                height: 28px;
                background: rgba(255, 255, 255, 0.61);
                border: 1px solid #eeeeee;
                padding: 10px;
                outline: none;
                border-radius: 2px;
                margin: 5px;"dir="auto" type="text" name="username" placeholder='Add username'></td>
                <td align="center" style="width: 150px;"><input style="width: 70px;
                height: 28px;
                background: #3da5ff;
                border-radius: 3px;
                color: #fff;
                text-decoration: none;
                border: none;" type="submit" name="submit_user" ></td>
            </tr>
        </table>
    </form>
    <?php
    //KICK OUT
    $fetch_sql = "SELECT signup.id,Username,Fullname,Userphoto FROM signup,mystudy where signup.id = mystudy.id and mystudy.class_id = :ed";
    $fetch = $conn->prepare($fetch_sql);
    $fetch->bindParam(':ed',$ed,PDO::PARAM_INT);
    $fetch->execute();
    while ($rows = $fetch->fetch(PDO::FETCH_ASSOC)) {
    ?>
    <table id="user_id_<?php echo $rows['id']?>" class="dashboard_UsersTable">
        <tr>
        <td style="width: 40px;">
            <div><img src="<?php echo $dircheckPath; ?>imgs/user_imgs/<?php echo $rows['Userphoto']; ?>"></div>
        </td>
        <td>
            <a href="<?php echo $dircheckPath; ?>u/<?php echo $rows['Username']; ?>"><p><?php echo $rows['Fullname']; ?></p></a>
        </td>
        <td align="center" style="width: 150px;"><a href="#" class="dashboard_EditDelete" onclick="delete_user(<?php echo $rows['id'];?>,<?php echo $ed?>)">-Kick</a></td>
        </tr>
    </table>
    <?php }?>
    <table class="dashboard_UsersTable"><?php echo"$add_result"?></table>
    </div>
</div>
</div>
<?php include "../includes/endJScodes.php"; ?>
</body>
</html>
<script type="text/javascript">
    function delete_user(id,ed){
        $.ajax({
            type: "POST",
            url: "<?php echo $dircheckPath; ?>includes/deleteuserinclass.php",
            data: {'id':id,'class_id':ed},
            success: function(html){
                user_id = "#user_id_"+id.toString();
                console.log(user_id);
                // console.log(id);
                console.log(ed);
                $(user_id).remove();
            }
        });
    }
</script>