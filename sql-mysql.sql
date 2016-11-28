drop table if exists contact;

drop table if exists customer;

drop table if exists customer_label;

drop table if exists deliver;

drop table if exists dict;

drop table if exists dict_type;

drop table if exists entrant;

drop table if exists evaluate;

drop table if exists experience;

drop table if exists interview;

drop table if exists label;

drop table if exists position;

drop table if exists requirement;

drop table if exists resume;

drop table if exists resume_intention;

drop table if exists resume_label;

drop table if exists resume_position;

drop table if exists user_info;

/*==============================================================*/
/* Table: contact                                               */
/*==============================================================*/
create table contact
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   phone                varchar(200) comment '�绰',
   sex                  varchar(40) comment '�Ա�0��ʾ�У�1��ʾŮ',
   position_id          varchar(40) comment 'ְλ',
   customer_id          varchar(40) comment '�ͻ�',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table contact comment '�ͻ���ϵ��';

/*==============================================================*/
/* Table: customer                                              */
/*==============================================================*/
create table customer
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   status               varchar(200) comment '״̬��0��ʾ��Ч��1��ʾ��Ч',
   fund                 varchar(40) comment 'ע���ʽ�',
   found_time           datetime comment '����ʱ��',
   industry             varchar(40) comment '��ҵ����Դ�����ֵ�',
   nature               varchar(40) comment '���ʣ���Դ�����ֵ�',
   scale                varchar(40) comment '��ģ����Դ�����ֵ�',
   address              varchar(400) comment '��ַ',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table customer comment '�ͻ�';

/*==============================================================*/
/* Table: customer_label                                        */
/*==============================================================*/
create table customer_label
(
   id                   varchar(40) not null,
   customer_id          varchar(200) comment '�ͻ�id',
   label_id             varchar(200) comment '��ǩid',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table customer_label comment '�ͻ���ǩ������';

/*==============================================================*/
/* Table: deliver                                               */
/*==============================================================*/
create table deliver
(
   id                   varchar(40) not null,
   resume_id            varchar(200) comment '����id',
   requirement_id       varchar(40) comment '����id',
   deliver_time         datetime comment 'Ͷ��ʱ��',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table deliver comment 'Ͷ�ݣ�ƥ�䣩��';

/*==============================================================*/
/* Table: dict                                                  */
/*==============================================================*/
create table dict
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   ename                varchar(400) comment 'Ӣ����',
   type_id              varchar(40) comment '�ֵ�����id',
   code                 varchar(40) comment '����',
   description          text comment '��Ŀ����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table dict comment '�ֵ��';

/*==============================================================*/
/* Table: dict_type                                             */
/*==============================================================*/
create table dict_type
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   ename                varchar(400) comment 'Ӣ����',
   code                 varchar(40) comment '����',
   description          text comment '��Ŀ����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table dict_type comment '�ֵ����ͱ�';

/*==============================================================*/
/* Table: entrant                                               */
/*==============================================================*/
create table entrant
(
   id                   varchar(40) not null,
   resume_id            varchar(40) comment '����id',
   enter_time           varchar(40) comment '��ְʱ��',
   leave_time           varchar(40) comment '��ְʱ��',
   customer_id         varchar(40) comment '�ͻ�id',
   position_id          varchar(40) comment 'ְλid',
   interview_id         varchar(40) comment '����id',
   pay                  varchar(40) comment 'н�ʣ�����',
   status               date comment '״̬��0��ʾ��ְ��1��ʾ��ְ',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table entrant comment '��ְ��¼��';

/*==============================================================*/
/* Table: evaluate                                              */
/*==============================================================*/
create table evaluate
(
   id                   varchar(40) not null,
   resume_id            varchar(200) comment '����',
   customer_id          varchar(200) comment '�ͻ�',
   r_evaluate           text comment '����������',
   c_evaluate           text comment '�ͻ�������',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table evaluate comment '���۱�';

/*==============================================================*/
/* Table: experience                                            */
/*==============================================================*/
create table experience
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '��Ŀ��',
   resume_id            varchar(40) comment '����id',
   position_id          varchar(40) comment 'ְλ',
   start_time           datetime comment '��ʼʱ��',
   end_time             datetime comment '����ʱ��',
   description          text comment '��Ŀ����',
   duty                 text comment 'ְ��',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table experience comment '��������';

/*==============================================================*/
/* Table: interview                                             */
/*==============================================================*/
create table interview
(
   id                   varchar(40) not null,
   deliver_id           varchar(40) comment 'Ͷ��id',
   user_id              varchar(40) comment '������',
   customer_id          varchar(40) comment '�ͻ�id',
   name                 varchar(200) comment '����',
   time                 datetime comment '����ʱ��',
   address              varchar(200) comment '���Ե�ַ',
   interviewer          varchar(100) comment '���Թ�',
   result               varchar(40) comment '���Խ������Դ�������ֵ�',
   reason               text comment '����ԭ��',
   type                 varchar(40) comment '�������ͣ���Դ�������ֵ�',
   next_time            datetime comment '�´�����ʱ��',
   enter_time           datetime comment '��ְ����',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table interview comment '���Ա�';

/*==============================================================*/
/* Table: "label"                                               */
/*==============================================================*/
create table label
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   ename                varchar(200) comment 'Ӣ����',
   code                 varchar(10) comment '����',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table label comment '��ǩ��';

/*==============================================================*/
/* Table: position                                              */
/*==============================================================*/
create table position
(
   id                   varchar(40) not null,
   type                 char(10) comment 'ְλ���ͣ���Դ�����ֵ�',
   name                 varchar(200) comment 'ְλ����',
   ename                char(10) comment 'ְλӢ����',
   code                 varchar(40) comment 'ְλ����',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table position comment 'ְλ��';

/*==============================================================*/
/* Table: requirement                                           */
/*==============================================================*/
create table requirement
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '������',
   customer_id          varchar(40) comment '�ͻ�id',
   code                 varchar(40) comment '�������',
   level                varchar(40) comment '������Դ�����ֵ�',
   num                  int comment '��������',
   period               varchar(40) comment '�������ڣ���Դ�����ֵ�',
   position_id          varchar(40) comment '����ְλ',
   duty                 text comment '��λְ��',
   demand               text comment '��λҪ��',
   address              varchar(40) comment '�ص㣬��Դ�����ֵ�',
   description          text comment '��λ����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table requirement comment '�����';

/*==============================================================*/
/* Table: resume                                                */
/*==============================================================*/
create table resume
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   position_id          varchar(40) comment '��ְ��λ',
   years                varchar(40) comment '�������ޣ���Դ�����ֵ�',
   join_time            datetime comment '�μӹ���ʱ��',
   school               varchar(40) comment '��ҵԺУ',
   finish_time          datetime comment '��ҵʱ��',
   user_id              varchar(40) comment '�û�',
   degree               varchar(40) comment 'ѧ������Դ�����ֵ�',
   mobile               varchar(40) comment '�绰������',
   birthday             date comment '��������',
   contact              varchar(100) comment '��ϵ��',
   contact_mobile       varchar(40) comment '��ϵ�˵绰',
   address              varchar(200) comment 'סַ',
   intention            char(10) comment '�����������Դ�����ֵ�',
   pay                  varchar(40) comment '����н�ʣ���Դ�����ֵ�',
   native               varchar(100) comment '���ᣬ���������ֵ�',
   sex                  varchar(40) comment '�Ա���Դ�������ֵ�',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table resume comment '������';

/*==============================================================*/
/* Table: resume_intention                                      */
/*==============================================================*/
create table resume_intention
(
   id                   varchar(40) not null,
   resume_id            varchar(200) comment '����id',
   intention            char(10) comment '�����������Դ�����ֵ�',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table resume_intention comment '�����������';

/*==============================================================*/
/* Table: resume_label                                          */
/*==============================================================*/
create table resume_label
(
   id                   varchar(40) not null,
   resume_id            varchar(200) comment '����id',
   label_id             varchar(200) comment '��ǩid',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table resume_label comment '������ǩ������';

/*==============================================================*/
/* Table: resume_position                                       */
/*==============================================================*/
create table resume_position
(
   id                   varchar(40) not null,
   resume_id            varchar(200) comment '����id',
   position_id          char(10) comment '�����������Դ�����ֵ�',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table resume_position comment '��������ְλ';

/*==============================================================*/
/* Table: user_info                                             */
/*==============================================================*/
create table user_info
(
   id                   varchar(40) not null,
   name                 varchar(200) comment '����',
   phone                varchar(200) comment '�绰',
   photo                varchar(400) comment 'ͷ��',
   sex                  varchar(40) comment '�Ա�0��ʾ�У�1��ʾŮ',
   email                varchar(400) comment '����',
   customer_id          varchar(40) comment '�ͻ�',
   login_id             varchar(40) comment '�˺�',
   password             varchar(512) comment '���룬����',
   description          text comment '����',
   create_user_id       varchar(40),
   create_time          datetime,
   last_modify_user_id  varchar(40),
   last_modify_time     datetime,
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table user_info comment '�û���Ϣ';
