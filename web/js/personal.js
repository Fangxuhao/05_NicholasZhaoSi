const Information = document.getElementById("information");
const Contribute = document.getElementById("contribute");
const BrowseRecord = document.getElementById("browseRecord");
const PersonalData = document.getElementById("personalData");
const TapTop=document.getElementById("tap_top");
const ContainerNoDoc=document.getElementById("container-no-doc");

    Information.addEventListener('click', () => {
    Information.classList.add("active");
Contribute.classList.remove("active");
BrowseRecord.classList.remove("active");
PersonalData.classList.remove("active");
TapTop.innerText="系统消息";
})
;

Contribute.addEventListener('click', () => {
    Contribute.classList.add("active");
Information.classList.remove("active");
BrowseRecord.classList.remove("active");
PersonalData.classList.remove("active");
    ContainerNoDoc.classList.add("invisible");

    TapTop.innerText="投稿";
    ContainerNoDoc.style.display="none";
})
;
BrowseRecord.addEventListener('click', () => {
    BrowseRecord.classList.add("active");
Information.classList.remove("active");
Contribute.classList.remove("active");
PersonalData.classList.remove("active");
    TapTop.innerText="浏览记录";
})
;

PersonalData.addEventListener('click', () => {
    PersonalData.classList.add("active");
Information.classList.remove("active");
Contribute.classList.remove("active");
BrowseRecord.classList.remove("active");
    TapTop.innerText="个人资料";
})
;

