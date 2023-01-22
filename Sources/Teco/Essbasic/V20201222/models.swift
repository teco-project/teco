//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Essbasic {
    /// 此结构体 (Address) 用于描述住址或通讯地址。
    public struct Address: TCInputModel, TCOutputModel {
        /// 省份
        public let province: String

        /// 城市
        public let city: String

        /// 区县
        public let county: String

        /// 详细地址
        public let details: String

        /// 国家，默认中国
        public let country: String?

        public init(province: String, city: String, county: String, details: String, country: String? = nil) {
            self.province = province
            self.city = city
            self.county = county
            self.details = details
            self.country = country
        }

        enum CodingKeys: String, CodingKey {
            case province = "Province"
            case city = "City"
            case county = "County"
            case details = "Details"
            case country = "Country"
        }
    }

    /// 此结构体 (Caller) 用于描述调用方属性。
    public struct Caller: TCInputModel {
        /// 应用号
        public let applicationId: String

        /// 下属机构ID
        public let subOrganizationId: String?

        /// 经办人的用户ID
        public let operatorId: String?

        public init(applicationId: String, subOrganizationId: String? = nil, operatorId: String? = nil) {
            self.applicationId = applicationId
            self.subOrganizationId = subOrganizationId
            self.operatorId = operatorId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case subOrganizationId = "SubOrganizationId"
            case operatorId = "OperatorId"
        }
    }

    /// 目录流程参与者
    public struct CatalogApprovers: TCOutputModel {
        /// 流程ID
        public let flowId: String

        /// 参与者列表
        public let approvers: [FlowApproverInfo]

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case approvers = "Approvers"
        }
    }

    /// 目录流程签署区
    public struct CatalogComponents: TCOutputModel {
        /// 流程ID
        public let flowId: String

        /// 签署区列表
        public let signComponents: [Component]

        /// 签署任务ID
        public let signId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case signComponents = "SignComponents"
            case signId = "SignId"
        }
    }

    /// 此结构体 (Component) 用于描述控件属性。
    public struct Component: TCInputModel, TCOutputModel {
        /// 控件编号
        ///
        /// 注：
        /// 当GenerateMode=3时，通过"^"来决定是否使用关键字整词匹配能力。
        /// 例：
        /// 当GenerateMode=3时，如果传入关键字"^甲方签署^"，则会在PDF文件中有且仅有"甲方签署"关键字的地方进行对应操作。
        /// 如传入的关键字为"甲方签署"，则PDF文件中每个出现关键字的位置都会执行相应操作。
        public let componentId: String?

        /// 如果是Component控件类型，则可选的字段为：
        /// TEXT - 普通文本控件；
        /// DATE - 普通日期控件；
        /// SELECT- 勾选框控件；
        /// 如果是SignComponent控件类型，则可选的字段为
        /// SIGN_SEAL- 签署印章控件；
        /// SIGN_DATE- 签署日期控件；
        /// SIGN_SIGNATURE - 用户签名控件；
        public let componentType: String?

        /// 控件名称
        public let componentName: String?

        /// 定义控件是否为必填项，默认为false
        public let componentRequired: Bool?

        /// 控件所属文件的序号 (模板中的resourceId排列序号)
        public let fileIndex: Int64?

        /// 控件生成的方式：
        /// 0 - 普通控件
        /// 1 - 表单域
        /// 2 - html 控件
        /// 3 - 关键字
        public let generateMode: Int64?

        /// 参数控件宽度，单位px
        public let componentWidth: Float?

        /// 参数控件高度，单位px
        public let componentHeight: Float?

        /// 参数控件所在页码
        public let componentPage: Int64?

        /// 参数控件X位置，单位px
        public let componentPosX: Float?

        /// 参数控件Y位置，单位px
        public let componentPosY: Float?

        /// 参数控件样式
        public let componentExtra: String?

        /// 印章ID，如果是手写签名则为jpg或png格式的base64图片
        ///
        /// SIGN_SEAL控件,可以用ORG_DEFAULT_SEAL表示主企业的默认印章
        /// SIGN_SEAL控件,可以用SUBORG_DEFAULT_SEAL表示子企业的默认印章
        /// SIGN_SEAL控件,可以用USER_DEFAULT_SEAL表示个人默认印章
        public let componentValue: String?

        /// 如果是SIGN_SEAL类型的签署控件, 参数标识H5签署界面是否在该签署区上进行放置展示, 1为放置,其他为不放置
        public let sealOperate: Int64?

        /// 不同GenerateMode对应的额外信息
        public let generateExtra: String?

        public init(componentId: String? = nil, componentType: String? = nil, componentName: String? = nil, componentRequired: Bool? = nil, fileIndex: Int64? = nil, generateMode: Int64? = nil, componentWidth: Float? = nil, componentHeight: Float? = nil, componentPage: Int64? = nil, componentPosX: Float? = nil, componentPosY: Float? = nil, componentExtra: String? = nil, componentValue: String? = nil, sealOperate: Int64? = nil, generateExtra: String? = nil) {
            self.componentId = componentId
            self.componentType = componentType
            self.componentName = componentName
            self.componentRequired = componentRequired
            self.fileIndex = fileIndex
            self.generateMode = generateMode
            self.componentWidth = componentWidth
            self.componentHeight = componentHeight
            self.componentPage = componentPage
            self.componentPosX = componentPosX
            self.componentPosY = componentPosY
            self.componentExtra = componentExtra
            self.componentValue = componentValue
            self.sealOperate = sealOperate
            self.generateExtra = generateExtra
        }

        enum CodingKeys: String, CodingKey {
            case componentId = "ComponentId"
            case componentType = "ComponentType"
            case componentName = "ComponentName"
            case componentRequired = "ComponentRequired"
            case fileIndex = "FileIndex"
            case generateMode = "GenerateMode"
            case componentWidth = "ComponentWidth"
            case componentHeight = "ComponentHeight"
            case componentPage = "ComponentPage"
            case componentPosX = "ComponentPosX"
            case componentPosY = "ComponentPosY"
            case componentExtra = "ComponentExtra"
            case componentValue = "ComponentValue"
            case sealOperate = "SealOperate"
            case generateExtra = "GenerateExtra"
        }
    }

    /// 此结构体 (ComponentSeal) 用于描述“签署区ID”到“印章ID”的映射。
    public struct ComponentSeal: TCInputModel {
        /// 签署区ID
        public let componentId: String

        /// 印章ID
        public let sealId: String

        public init(componentId: String, sealId: String) {
            self.componentId = componentId
            self.sealId = sealId
        }

        enum CodingKeys: String, CodingKey {
            case componentId = "ComponentId"
            case sealId = "SealId"
        }
    }

    /// <自定义Id,文件id>映射对象
    public struct CustomFileIdMap: TCOutputModel {
        /// 用户自定义ID
        public let customId: String

        /// 文件id
        public let fileId: String

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case fileId = "FileId"
        }
    }

    /// 自定义流程id映射关系
    public struct CustomFlowIdMap: TCOutputModel {
        /// 自定义id
        public let customId: String

        /// 流程id
        public let flowId: String

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case flowId = "FlowId"
        }
    }

    /// 此结构体 (FaceIdPhoto) 用于描述慧眼人脸核身照片信息。
    public struct FaceIdPhoto: TCOutputModel {
        /// 核身结果：
        /// 0 - 通过；
        /// 1 - 未通过
        public let result: Int64

        /// 核身失败描述
        public let description: String

        /// 照片数据 (base64编码, 一般为JPG或PNG)
        public let photo: String

        /// 订单号 (orderNo)
        public let orderNumber: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case photo = "Photo"
            case orderNumber = "OrderNumber"
        }
    }

    /// 此结构体 (FaceIdResult) 用于描述慧眼人脸核身结果。
    public struct FaceIdResult: TCOutputModel {
        /// 核身结果：
        /// 0 - 通过；
        /// 1 - 未通过
        public let result: Int64

        /// 核身失败描述
        public let description: String

        /// 订单号 (orderNo)
        public let orderNumber: String

        /// 姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 身份证件类型：
        /// ID_CARD - 居民身份证
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCardType: String?

        /// 身份证件号码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCardNumber: String?

        /// 活体检测得分 (百分制)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveRate: Int64?

        /// 人脸检测得分 (百分制)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let similarity: Float?

        /// 刷脸时间 (UNIX时间戳)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let occurredTime: Int64?

        /// 照片数据 (base64编码, 一般为JPG或PNG)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let photo: String?

        /// 视频数据 (base64编码, 一般为MP4)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let video: String?

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case orderNumber = "OrderNumber"
            case name = "Name"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case liveRate = "LiveRate"
            case similarity = "Similarity"
            case occurredTime = "OccurredTime"
            case photo = "Photo"
            case video = "Video"
        }
    }

    /// 此结构体 (FileUrl) 用于描述下载文件的URL信息。
    public struct FileUrl: TCOutputModel {
        /// 下载文件的URL
        public let url: String

        /// 下载文件的附加信息
        public let option: String

        /// 下载文件所属的资源序号
        public let index: Int64

        /// 目录业务下，文件对应的流程
        public let flowId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case option = "Option"
            case index = "Index"
            case flowId = "FlowId"
        }
    }

    /// 此结构体 (FlowApproverInfo) 用于描述流程参与者信息。
    public struct FlowApproverInfo: TCOutputModel {
        /// 用户ID
        public let userId: String

        /// 认证方式：
        /// WEIXINAPP - 微信小程序；
        /// FACEID - 慧眼 (默认)；
        /// VERIFYCODE - 验证码；
        /// THIRD - 第三方 (暂不支持)
        public let verifyChannel: [String]

        /// 签署状态：
        /// 0 - 待签署；
        /// 1- 已签署；
        /// 2 - 拒绝；
        /// 3 - 过期未处理；
        /// 4 - 流程已撤回,
        /// 12-审核中,
        /// 13-审核驳回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approveStatus: Int64?

        /// 拒签/签署/审核驳回原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approveMessage: String?

        /// 签约时间的时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approveTime: Int64?

        /// 签署企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subOrganizationId: String?

        /// 签署完成后跳转的URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jumpUrl: String?

        /// 用户签署区ID到印章ID的映射集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let componentSeals: [ComponentSeal]?

        /// 签署前置条件：是否强制用户全文阅读，即阅读到待签署文档的最后一页。默认FALSE
        public let isFullText: Bool

        /// 签署前置条件：强制阅读时长，页面停留时长不足则不允许签署。默认不限制
        public let preReadTime: Int64

        /// 签署人手机号，脱敏显示
        public let mobile: String

        /// 签署链接截止时间，默认签署流程发起后7天失效
        public let deadline: Int64

        /// 是否为最后一个签署人, 若为最后一人，则其签署完成后自动归档
        public let isLastApprover: Bool

        /// 短信模板
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smsTemplate: SmsTemplate?

        /// 身份证号，脱敏显示
        public let idCardNumber: String

        /// 用户姓名
        public let name: String

        /// 是否支持线下核身
        public let canOffLine: Bool

        /// 证件号码类型：ID_CARD - 身份证，PASSPORT - 护照，MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证; 暂不支持用于电子签自有平台实名认证，MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证; 暂不支持用于电子签自有平台实名认证，HOUSEHOLD_REGISTER - 户口本; 暂不支持用于电子签自有平台实名认证，TEMP_ID_CARD - 临时居民身份证; 暂不支持用于电子签自有平台实名认证
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCardType: String?

        /// 签署回调地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callbackUrl: String?

        /// 签署任务ID，标识每一次的流程发送
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let signId: String?

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case verifyChannel = "VerifyChannel"
            case approveStatus = "ApproveStatus"
            case approveMessage = "ApproveMessage"
            case approveTime = "ApproveTime"
            case subOrganizationId = "SubOrganizationId"
            case jumpUrl = "JumpUrl"
            case componentSeals = "ComponentSeals"
            case isFullText = "IsFullText"
            case preReadTime = "PreReadTime"
            case mobile = "Mobile"
            case deadline = "Deadline"
            case isLastApprover = "IsLastApprover"
            case smsTemplate = "SmsTemplate"
            case idCardNumber = "IdCardNumber"
            case name = "Name"
            case canOffLine = "CanOffLine"
            case idCardType = "IdCardType"
            case callbackUrl = "CallbackUrl"
            case signId = "SignId"
        }
    }

    /// 此结构体 (FlowFileInfo) 用于描述流程文档信息。
    public struct FlowFileInfo: TCOutputModel {
        /// 文件序号
        public let fileIndex: Int64

        /// 文件类型
        public let fileType: String

        /// 文件的MD5码
        public let fileMd5: String

        /// 文件名
        public let fileName: String

        /// 文件大小，单位为Byte
        public let fileSize: Int64

        /// 文件创建时间戳
        public let createdOn: Int64

        /// 文件的下载地址
        public let url: String

        enum CodingKeys: String, CodingKey {
            case fileIndex = "FileIndex"
            case fileType = "FileType"
            case fileMd5 = "FileMd5"
            case fileName = "FileName"
            case fileSize = "FileSize"
            case createdOn = "CreatedOn"
            case url = "Url"
        }
    }

    /// 此结构体 (FlowInfo) 用于描述流程信息。
    public struct FlowInfo: TCInputModel {
        /// 合同名字
        public let flowName: String

        /// 签署截止时间戳，超过有效签署时间则该签署流程失败
        public let deadline: Int64

        /// 合同描述
        public let flowDescription: String?

        /// 合同类型：
        /// 1. “劳务”
        /// 2. “销售”
        /// 3. “租赁”
        /// 4. “其他”
        public let flowType: String?

        /// 回调地址
        public let callbackUrl: String?

        /// 用户自定义数据
        public let userData: String?

        public init(flowName: String, deadline: Int64, flowDescription: String? = nil, flowType: String? = nil, callbackUrl: String? = nil, userData: String? = nil) {
            self.flowName = flowName
            self.deadline = deadline
            self.flowDescription = flowDescription
            self.flowType = flowType
            self.callbackUrl = callbackUrl
            self.userData = userData
        }

        enum CodingKeys: String, CodingKey {
            case flowName = "FlowName"
            case deadline = "Deadline"
            case flowDescription = "FlowDescription"
            case flowType = "FlowType"
            case callbackUrl = "CallbackUrl"
            case userData = "UserData"
        }
    }

    /// 此结构体 (Seal) 用于描述电子印章的信息。
    public struct Seal: TCOutputModel {
        /// 电子印章ID
        public let sealId: String

        /// 电子印章名称
        public let sealName: String

        /// 电子印章类型
        public let sealType: String

        /// 电子印章来源：
        /// CREATE - 通过图片上传
        /// GENERATE - 通过文字生成
        public let sealSource: String

        /// 电子印章创建者
        public let creator: Caller

        /// 电子印章创建时间戳
        public let createdOn: Int64

        /// 电子印章所有人
        public let userId: String

        /// 电子印章URL
        public let fileUrl: FileUrl

        /// 是否为默认印章，false-非默认，true-默认
        public let defaultSeal: Bool

        enum CodingKeys: String, CodingKey {
            case sealId = "SealId"
            case sealName = "SealName"
            case sealType = "SealType"
            case sealSource = "SealSource"
            case creator = "Creator"
            case createdOn = "CreatedOn"
            case userId = "UserId"
            case fileUrl = "FileUrl"
            case defaultSeal = "DefaultSeal"
        }
    }

    /// 此结构体 (SignSeal) 用于描述签名/印章信息。
    public struct SignSeal: TCInputModel {
        /// 签署控件ID
        public let componentId: String

        /// 签署印章类型:
        /// SIGN_SIGNATURE - 签名
        /// SIGN_SEAL - 印章
        /// SIGN_DATE - 日期
        /// SIGN_IMAGE - 图片
        public let signType: String

        /// 合同文件ID
        public let fileIndex: Int64

        /// 印章ID，仅当 SignType 为 SIGN_SEAL 时必填
        public let sealId: String?

        /// 签名内容，仅当 SignType 为SIGN_SIGNATURE或SIGN_IMAGE 时必填，base64编码
        public let sealContent: String?

        public init(componentId: String, signType: String, fileIndex: Int64, sealId: String? = nil, sealContent: String? = nil) {
            self.componentId = componentId
            self.signType = signType
            self.fileIndex = fileIndex
            self.sealId = sealId
            self.sealContent = sealContent
        }

        enum CodingKeys: String, CodingKey {
            case componentId = "ComponentId"
            case signType = "SignType"
            case fileIndex = "FileIndex"
            case sealId = "SealId"
            case sealContent = "SealContent"
        }
    }

    /// 此结构体 (SmsTemplate) 用于描述短信模板。
    public struct SmsTemplate: TCInputModel {
        /// 模板ID，必须填写已审核通过的模板ID。模板ID可登录短信控制台查看。
        public let templateId: String

        /// 短信签名内容，使用UTF-8编码，必须填写已审核通过的签名，签名信息可登录短信控制台查看。
        public let sign: String

        public init(templateId: String, sign: String) {
            self.templateId = templateId
            self.sign = sign
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case sign = "Sign"
        }
    }

    /// 此结构体 (SubOrganizationDetail) 用于描述子机构或子企业的详情信息。
    public struct SubOrganizationDetail: TCOutputModel {
        /// 组织ID
        public let id: String

        /// 机构名称全称
        public let name: String

        /// 机构电子邮箱
        public let email: String

        /// 机构证件号码类型
        public let idCardType: String

        /// 机构证件号码
        public let idCardNumber: String

        /// 机构类型
        public let organizationType: String

        /// 机构证件文件类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCardFileType: String?

        /// 机构证件照片文件，base64编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizLicenseFile: String?

        /// 机构证件照片文件名
        public let bizLicenseFileName: String

        /// 机构法人/经营者姓名
        public let legalName: String

        /// 机构法人/经营者证件类型
        public let legalIdCardType: String

        /// 机构法人/经营者证件号码
        public let legalIdCardNumber: String

        /// 机构法人/经营者/联系人手机号码
        public let legalMobile: String

        /// 组织联系人姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactName: String?

        /// 机构实名状态
        public let verifyStatus: String

        /// 机构通过实名时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifiedOn: Int64?

        /// 机构创建时间
        public let createdOn: Int64

        /// 机构更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedOn: Int64?

        /// 实名认证的客户端IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyClientIp: String?

        /// 实名认证的服务器IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyServerIp: String?

        /// 企业联系地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactAddress: Address?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case email = "Email"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case organizationType = "OrganizationType"
            case idCardFileType = "IdCardFileType"
            case bizLicenseFile = "BizLicenseFile"
            case bizLicenseFileName = "BizLicenseFileName"
            case legalName = "LegalName"
            case legalIdCardType = "LegalIdCardType"
            case legalIdCardNumber = "LegalIdCardNumber"
            case legalMobile = "LegalMobile"
            case contactName = "ContactName"
            case verifyStatus = "VerifyStatus"
            case verifiedOn = "VerifiedOn"
            case createdOn = "CreatedOn"
            case updatedOn = "UpdatedOn"
            case verifyClientIp = "VerifyClientIp"
            case verifyServerIp = "VerifyServerIp"
            case contactAddress = "ContactAddress"
        }
    }

    /// 此结构体 (UploadFile) 用于描述多文件上传的文件信息。
    public struct UploadFile: TCInputModel {
        /// Base64编码后的文件内容
        public let fileBody: String

        /// 文件名
        public let fileName: String?

        public init(fileBody: String, fileName: String? = nil) {
            self.fileBody = fileBody
            self.fileName = fileName
        }

        enum CodingKeys: String, CodingKey {
            case fileBody = "FileBody"
            case fileName = "FileName"
        }
    }

    /// 此结构体 (UserDescribe) 用于描述个人帐号查询结果。
    public struct UserDescribe: TCOutputModel {
        /// 用户ID
        public let userId: String

        /// 手机号，隐藏中间4位数字，用*代替
        public let mobile: String

        /// 注册时间点 (UNIX时间戳)
        public let createdOn: Int64

        /// 实名认证状态：
        /// 0 - 未实名；
        /// 1 - 通过实名
        public let verifyStatus: Int64

        /// 真实姓名
        public let name: String

        /// 实名认证通过时间 (UNIX时间戳)
        public let verifiedOn: Int64

        /// 身份证件类型;
        /// ID_CARD - 居民身份证；
        /// PASSPORT - 护照；
        /// MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证；
        /// MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证；
        /// HOUSEHOLD_REGISTER - 户口本；
        /// TEMP_ID_CARD - 临时居民身份证
        public let idCardType: String

        /// 身份证件号码 (脱敏)
        public let idCardNumber: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case mobile = "Mobile"
            case createdOn = "CreatedOn"
            case verifyStatus = "VerifyStatus"
            case name = "Name"
            case verifiedOn = "VerifiedOn"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
        }
    }
}
