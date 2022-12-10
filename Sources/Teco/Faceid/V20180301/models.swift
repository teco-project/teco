//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Faceid {
    /// 计费详情
    public struct ChargeDetail: TCOutputModel {
        /// 一比一时间时间戳，13位。
        public let reqTime: String
        
        /// 一比一请求的唯一标记。
        public let seq: String
        
        /// 一比一时使用的、脱敏后的身份证号。
        public let idcard: String
        
        /// 一比一时使用的、脱敏后的姓名。
        public let name: String
        
        /// 一比一的相似度。0-100，保留2位小数。
        public let sim: String
        
        /// 本次详情是否收费。
        public let isNeedCharge: Bool
        
        /// 收费类型，比对、核身、混合部署。
        public let chargeType: String
        
        /// 本次活体一比一最终结果。
        public let errorCode: String
        
        /// 本次活体一比一最终结果描述。
        public let errorMessage: String
        
        enum CodingKeys: String, CodingKey {
            case reqTime = "ReqTime"
            case seq = "Seq"
            case idcard = "Idcard"
            case name = "Name"
            case sim = "Sim"
            case isNeedCharge = "IsNeedCharge"
            case chargeType = "ChargeType"
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
        }
    }
    
    /// 活体一比一详情
    public struct DetectDetail: TCOutputModel {
        /// 请求时间戳。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reqTime: String?
        
        /// 本次活体一比一请求的唯一标记。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let seq: String?
        
        /// 参与本次活体一比一的身份证号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idcard: String?
        
        /// 参与本次活体一比一的姓名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 本次活体一比一的相似度。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sim: String?
        
        /// 本次活体一比一是否收费
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isNeedCharge: Bool?
        
        /// 本次活体一比一最终结果。0为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errcode: Int64?
        
        /// 本次活体一比一最终结果描述。（仅描述用，文案更新时不会通知。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errmsg: String?
        
        /// 本次活体结果。0为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livestatus: Int64?
        
        /// 本次活体结果描述。（仅描述用，文案更新时不会通知。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livemsg: String?
        
        /// 本次一比一结果。0为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let comparestatus: Int64?
        
        /// 本次一比一结果描述。（仅描述用，文案更新时不会通知。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let comparemsg: String?
        
        /// 比对库源类型。包括：
        /// 公安商业库；
        /// 业务方自有库（用户上传照片、客户的混合库、混合部署库）；
        /// 二次验证库；
        /// 人工审核库；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compareLibType: String?
        
        /// 枚举活体检测类型：
        /// 0：未知
        /// 1：数字活体
        /// 2：动作活体
        /// 3：静默活体
        /// 4：一闪活体（动作+光线）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livenessMode: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case reqTime = "ReqTime"
            case seq = "Seq"
            case idcard = "Idcard"
            case name = "Name"
            case sim = "Sim"
            case isNeedCharge = "IsNeedCharge"
            case errcode = "Errcode"
            case errmsg = "Errmsg"
            case livestatus = "Livestatus"
            case livemsg = "Livemsg"
            case comparestatus = "Comparestatus"
            case comparemsg = "Comparemsg"
            case compareLibType = "CompareLibType"
            case livenessMode = "LivenessMode"
        }
    }
    
    /// 核身最佳帧信息
    public struct DetectInfoBestFrame: TCOutputModel {
        /// 活体比对最佳帧Base64编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrame: String?
        
        /// 自截帧Base64编码数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrames: [String]?
        
        enum CodingKeys: String, CodingKey {
            case bestFrame = "BestFrame"
            case bestFrames = "BestFrames"
        }
    }
    
    /// 核身身份证图片信息
    public struct DetectInfoIdCardData: TCOutputModel {
        /// OCR正面照片的base64编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrFront: String?
        
        /// OCR反面照片的base64编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrBack: String?
        
        /// 旋转裁边后的正面照片base64编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processedFrontImage: String?
        
        /// 旋转裁边后的背面照片base64编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processedBackImage: String?
        
        /// 身份证正面人像图base64编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let avatar: String?
        
        /// 身份证人像面告警码，开启身份证告警功能后才会返回，返回数组中可能出现的告警码如下：
        /// -9100 身份证有效日期不合法告警，
        /// -9101 身份证边框不完整告警，
        /// -9102 身份证复印件告警，
        /// -9103 身份证翻拍告警，
        /// -9105 身份证框内遮挡告警，
        /// -9104 临时身份证告警，
        /// -9106 身份证 PS 告警，
        /// -9107 身份证反光告警。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let warnInfos: [Int64]?
        
        /// 身份证国徽面告警码，开启身份证告警功能后才会返回，返回数组中可能出现的告警码如下：
        /// -9100 身份证有效日期不合法告警，
        /// -9101 身份证边框不完整告警，
        /// -9102 身份证复印件告警，
        /// -9103 身份证翻拍告警，
        /// -9105 身份证框内遮挡告警，
        /// -9104 临时身份证告警，
        /// -9106 身份证 PS 告警，
        /// -9107 身份证反光告警。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backWarnInfos: [Int64]?
        
        enum CodingKeys: String, CodingKey {
            case ocrFront = "OcrFront"
            case ocrBack = "OcrBack"
            case processedFrontImage = "ProcessedFrontImage"
            case processedBackImage = "ProcessedBackImage"
            case avatar = "Avatar"
            case warnInfos = "WarnInfos"
            case backWarnInfos = "BackWarnInfos"
        }
    }
    
    /// 核身文本信息
    public struct DetectInfoText: TCOutputModel {
        /// 本次流程最终验证结果。0为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errCode: Int64?
        
        /// 本次流程最终验证结果描述。（仅描述用，文案更新时不会通知。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMsg: String?
        
        /// 本次验证使用的身份证号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCard: String?
        
        /// 本次验证使用的姓名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// Ocr识别结果。民族。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrNation: String?
        
        /// Ocr识别结果。家庭住址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrAddress: String?
        
        /// Ocr识别结果。生日。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrBirth: String?
        
        /// Ocr识别结果。签发机关。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrAuthority: String?
        
        /// Ocr识别结果。有效日期。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrValidDate: String?
        
        /// Ocr识别结果。姓名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrName: String?
        
        /// Ocr识别结果。身份证号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrIdCard: String?
        
        /// Ocr识别结果。性别。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrGender: String?
        
        /// 本次流程最终活体结果。0为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveStatus: Int64?
        
        /// 本次流程最终活体结果描述。（仅描述用，文案更新时不会通知。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveMsg: String?
        
        /// 本次流程最终一比一结果。0为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let comparestatus: Int64?
        
        /// 本次流程最终一比一结果描述。（仅描述用，文案更新时不会通知。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let comparemsg: String?
        
        /// 本次流程活体一比一的分数，取值范围 [0.00, 100.00]。相似度大于等于70时才判断为同一人，也可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sim: String?
        
        /// 地理位置经纬度。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: String?
        
        /// Auth接口带入额外信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?
        
        /// 本次流程进行的活体一比一流水。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livenessDetail: [DetectDetail]?
        
        /// 手机号码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mobile: String?
        
        /// 本次流程最终比对库源类型。包括：
        /// 权威库；
        /// 业务方自有库（用户上传照片、客户的混合库、混合部署库）；
        /// 二次验证库；
        /// 人工审核库；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compareLibType: String?
        
        /// 本次流程最终活体类型。包括：
        /// 0：未知
        /// 1：数字活体
        /// 2：动作活体
        /// 3：静默活体
        /// 4：一闪活体（动作+光线）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livenessMode: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMsg = "ErrMsg"
            case idCard = "IdCard"
            case name = "Name"
            case ocrNation = "OcrNation"
            case ocrAddress = "OcrAddress"
            case ocrBirth = "OcrBirth"
            case ocrAuthority = "OcrAuthority"
            case ocrValidDate = "OcrValidDate"
            case ocrName = "OcrName"
            case ocrIdCard = "OcrIdCard"
            case ocrGender = "OcrGender"
            case liveStatus = "LiveStatus"
            case liveMsg = "LiveMsg"
            case comparestatus = "Comparestatus"
            case comparemsg = "Comparemsg"
            case sim = "Sim"
            case location = "Location"
            case extra = "Extra"
            case livenessDetail = "LivenessDetail"
            case mobile = "Mobile"
            case compareLibType = "CompareLibType"
            case livenessMode = "LivenessMode"
        }
    }
    
    /// 核身视频信息
    public struct DetectInfoVideoData: TCOutputModel {
        /// 活体视频的base64编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livenessVideo: String?
        
        enum CodingKeys: String, CodingKey {
            case livenessVideo = "LivenessVideo"
        }
    }
    
    /// Eid出参，包括商户方用户的标识和加密的用户姓名身份证信息。
    public struct EidInfo: TCOutputModel {
        /// 商户方 appeIDcode 的数字证书
        public let eidCode: String
        
        /// Eid中心针对商户方EidCode的电子签名
        public let eidSign: String
        
        /// 商户方公钥加密的会话密钥的base64字符串，[指引详见](https://cloud.tencent.com/document/product/1007/63370)
        public let desKey: String
        
        /// 会话密钥sm2加密后的base64字符串，[指引详见](https://cloud.tencent.com/document/product/1007/63370)
        public let userInfo: String
        
        enum CodingKeys: String, CodingKey {
            case eidCode = "EidCode"
            case eidSign = "EidSign"
            case desKey = "DesKey"
            case userInfo = "UserInfo"
        }
    }
    
    /// 敏感数据加密
    public struct Encryption: TCInputModel {
        /// 在使用加密服务时，填入要被加密的字段。本接口中可填入加密后的一个或多个字段
        public let encryptList: [String]
        
        /// 有加密需求的用户，接入传入kms的CiphertextBlob，关于数据加密可查阅<a href="https://cloud.tencent.com/document/product/1007/47180">数据加密</a> 文档。
        public let ciphertextBlob: String
        
        /// 有加密需求的用户，传入CBC加密的初始向量（客户自定义字符串，长度16字符）。
        public let iv: String
        
        /// 加密使用的算法（支持'AES-256-CBC'、'SM4-GCM'），不传默认为'AES-256-CBC'
        public let algorithm: String?
        
        /// SM4-GCM算法生成的消息摘要（校验消息完整性时使用）
        public let tagList: [String]?
        
        public init (encryptList: [String], ciphertextBlob: String, iv: String, algorithm: String?, tagList: [String]?) {
            self.encryptList = encryptList
            self.ciphertextBlob = ciphertextBlob
            self.iv = iv
            self.algorithm = algorithm
            self.tagList = tagList
        }
        
        enum CodingKeys: String, CodingKey {
            case encryptList = "EncryptList"
            case ciphertextBlob = "CiphertextBlob"
            case iv = "Iv"
            case algorithm = "Algorithm"
            case tagList = "TagList"
        }
    }
    
    /// 获取token时的的配置
    public struct GetEidTokenConfig: TCInputModel {
        /// 姓名身份证输入方式。
        /// 1：传身份证正反面OCR   
        /// 2：传身份证正面OCR  
        /// 3：用户手动输入  
        /// 4：客户后台传入  
        /// 默认1
        /// 注：使用OCR时仅支持用户修改结果中的姓名
        public let inputType: String?
        
        /// 是否使用意愿核身，默认不使用。注意：如开启使用，则计费标签按【意愿核身】计费标签计价；如不开启，则计费标签按【E证通】计费标签计价，价格详见：[价格说明](https://cloud.tencent.com/document/product/1007/56804)。
        public let useIntentionVerify: Bool?
        
        /// 意愿核身模式。枚举值：1( 朗读模式)，2（问答模式） 。默认值1
        public let intentionMode: String?
        
        /// 意愿核身朗读模式使用的文案，若未使用意愿核身朗读功能，该字段无需传入。默认为空，最长可接受120的字符串长度。
        public let intentionVerifyText: String?
        
        /// 意愿核身问答模式的配置列表。当前仅支持一个问答。
        public let intentionQuestions: [IntentionQuestion]?
        
        /// 意愿核身过程中识别用户的回答意图，开启后除了IntentionQuestions的Answers列表中的标准回答会通过，近似意图的回答也会通过，默认不开启。
        public let intentionRecognition: Bool?
        
        public init (inputType: String?, useIntentionVerify: Bool?, intentionMode: String?, intentionVerifyText: String?, intentionQuestions: [IntentionQuestion]?, intentionRecognition: Bool?) {
            self.inputType = inputType
            self.useIntentionVerify = useIntentionVerify
            self.intentionMode = intentionMode
            self.intentionVerifyText = intentionVerifyText
            self.intentionQuestions = intentionQuestions
            self.intentionRecognition = intentionRecognition
        }
        
        enum CodingKeys: String, CodingKey {
            case inputType = "InputType"
            case useIntentionVerify = "UseIntentionVerify"
            case intentionMode = "IntentionMode"
            case intentionVerifyText = "IntentionVerifyText"
            case intentionQuestions = "IntentionQuestions"
            case intentionRecognition = "IntentionRecognition"
        }
    }
    
    /// 意愿核身过程中播报的问题文本、用户回答的标准文本。
    public struct IntentionQuestion: TCInputModel {
        /// 系统播报的问题文本，问题最大长度为150个字符。
        public let question: String
        
        /// 用户答案的标准文本列表，用于识别用户回答的语音与标准文本是否一致。列表长度最大为50，单个答案长度限制10个字符。
        public let answers: [String]
        
        public init (question: String, answers: [String]) {
            self.question = question
            self.answers = answers
        }
        
        enum CodingKeys: String, CodingKey {
            case question = "Question"
            case answers = "Answers"
        }
    }
    
    /// 意愿核身问答模式结果
    public struct IntentionQuestionResult: TCOutputModel {
        /// 意愿核身最终结果：
        /// 0：认证通过，-1：认证未通过，-2：浏览器内核不兼容，无法进行意愿校验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let finalResultCode: String?
        
        /// 视频base64（其中包含全程问题和回答音频，mp4格式）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let video: String?
        
        /// 屏幕截图base64列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let screenShot: [String]?
        
        /// 和答案匹配结果列表
        /// 0：成功，-1：不匹配
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultCode: [String]?
        
        /// 回答问题语音识别结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asrResult: [String]?
        
        /// 答案录音音频
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audios: [String]?
        
        enum CodingKeys: String, CodingKey {
            case finalResultCode = "FinalResultCode"
            case video = "Video"
            case screenShot = "ScreenShot"
            case resultCode = "ResultCode"
            case asrResult = "AsrResult"
            case audios = "Audios"
        }
    }
    
    /// 意愿核身相关结果
    public struct IntentionVerifyData: TCOutputModel {
        /// 意愿确认环节中录制的视频（base64）。若不存在则为空字符串。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentionVerifyVideo: String?
        
        /// 意愿确认环节中用户语音转文字的识别结果。若不存在则为空字符串。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asrResult: String?
        
        /// 意愿确认环节的结果码。当该结果码为0时，语音朗读的视频与语音识别结果才会返回。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorCode: Int64?
        
        /// 意愿确认环节的结果信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?
        
        /// 意愿确认环节中录制视频的最佳帧（base64）。若不存在则为空字符串。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentionVerifyBestFrame: String?
        
        /// 本次流程用户语音与传入文本比对的相似度分值，取值范围 [0.00, 100.00]。只有配置了相似度阈值后才进行语音校验并返回相似度分值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asrResultSimilarity: String?
        
        enum CodingKeys: String, CodingKey {
            case intentionVerifyVideo = "IntentionVerifyVideo"
            case asrResult = "AsrResult"
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case intentionVerifyBestFrame = "IntentionVerifyBestFrame"
            case asrResultSimilarity = "AsrResultSimilarity"
        }
    }
    
    /// RuleId相关配置
    public struct RuleIdConfig: TCInputModel {
        /// 意愿核身过程中识别用户的回答意图，开启后除了IntentionQuestions的Answers列表中的标准回答会通过，近似意图的回答也会通过，默认不开启。
        public let intentionRecognition: Bool?
        
        public init (intentionRecognition: Bool?) {
            self.intentionRecognition = intentionRecognition
        }
        
        enum CodingKeys: String, CodingKey {
            case intentionRecognition = "IntentionRecognition"
        }
    }
    
    /// 账单详情
    public struct WeChatBillDetail: TCOutputModel {
        /// token
        public let bizToken: String
        
        /// 本token收费次数
        public let chargeCount: UInt64
        
        /// 本token计费详情
        public let chargeDetails: [ChargeDetail]
        
        /// 业务RuleId
        public let ruleId: String
        
        enum CodingKeys: String, CodingKey {
            case bizToken = "BizToken"
            case chargeCount = "ChargeCount"
            case chargeDetails = "ChargeDetails"
            case ruleId = "RuleId"
        }
    }
}