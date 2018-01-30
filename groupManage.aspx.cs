using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class groupManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtLoad.Text = "<?xml version=\"1.0\" encoding=\"utf-8\" ?><document><DepartList><DepartInfo><DepartId>001</DepartId><DepartName>研发部</DepartName><DepartMemo>研发部备注</DepartMemo><DepartSeq>1</DepartSeq><PowerList>1;2</PowerList><RoadList>1,1</RoadList></DepartInfo><DepartInfo><DepartId>002</DepartId><DepartName>商务部</DepartName><DepartMemo>商务部备注</DepartMemo><DepartSeq>2</DepartSeq><PowerList>1;2;3</PowerList><RoadList>1,1;1,2;2,1;2,2</RoadList></DepartInfo></DepartList><PowerList><PowerInfo><PowerId>1</PowerId><PowerName>实时地图</PowerName><PowerGroup>0</PowerGroup><PowerSeq>1</PowerSeq></PowerInfo><PowerInfo><PowerId>2</PowerId><PowerName>人员管理</PowerName><PowerGroup>0</PowerGroup><PowerSeq>2</PowerSeq></PowerInfo><PowerInfo><PowerId>3</PowerId><PowerName>路口管理</PowerName><PowerGroup>0</PowerGroup><PowerSeq>3</PowerSeq></PowerInfo></PowerList><RoadList><RoadInfo><AreaId>1</AreaId><AreaName>浦口区</AreaName><RoadId>1</RoadId><RoadName>文德路1</RoadName></RoadInfo><RoadInfo><AreaId>1</AreaId><AreaName>浦口区</AreaName><RoadId>2</RoadId><RoadName>文德路2</RoadName></RoadInfo><RoadInfo><AreaId>2</AreaId><AreaName>六合区</AreaName><RoadId>1</RoadId><RoadName>六合路口1</RoadName></RoadInfo><RoadInfo><AreaId>2</AreaId><AreaName>六合区</AreaName><RoadId>2</RoadId><RoadName>六合路口2</RoadName></RoadInfo></RoadList><AreaList><AreaInfo><AreaId>1</AreaId><AreaName>浦口区</AreaName><AreaMemo>浦口区备注</AreaMemo></AreaInfo><AreaInfo><AreaId>2</AreaId><AreaName>六合区</AreaName><AreaMemo>六合区备注</AreaMemo></AreaInfo></AreaList></document>";
    }

    protected void createGroupSubmitBtn_Click(object sender, EventArgs e)
    {
        string a = txtSubmit.Text;

    } 
}