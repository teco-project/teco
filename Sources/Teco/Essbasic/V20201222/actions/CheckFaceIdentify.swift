//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 检测人脸核身结果
    ///
    /// 该接口为第三方平台向电子签平台检测慧眼或腾讯电子签小程序人脸核身结果
    @inlinable
    public func checkFaceIdentify(_ input: CheckFaceIdentifyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckFaceIdentifyResponse > {
        self.client.execute(action: "CheckFaceIdentify", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 检测人脸核身结果
    ///
    /// 该接口为第三方平台向电子签平台检测慧眼或腾讯电子签小程序人脸核身结果
    @inlinable
    public func checkFaceIdentify(_ input: CheckFaceIdentifyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckFaceIdentifyResponse {
        try await self.client.execute(action: "CheckFaceIdentify", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckFaceIdentify请求参数结构体
    public struct CheckFaceIdentifyRequest: TCRequestModel {
        /// 调用方信息; 必选
        public let caller: Caller
        
        /// 人脸核身渠道; 必选; WEIXINAPP:腾讯电子签小程序,FACEID:腾讯电子签慧眼,None:白名单中的客户直接通过
        public let verifyChannel: String
        
        /// 核身订单号; 必选; 对于WEIXINAPP,直接取响应的{VerifyResult};对于FACEID,使用{WbAppId}:{OrderNo}拼接
        public let verifyResult: String
        
        /// 要对比的姓名; 可选; 未填写时对比caller.OperatorId的实名信息
        public let name: String?
        
        /// 要对比的身份证号码; 可选; 未填写时对比caller.OperatorId的实名信息
        public let idCardNumber: String?
        
        /// 是否取认证时的照片
        public let getPhoto: Bool?
        
        public init (caller: Caller, verifyChannel: String, verifyResult: String, name: String?, idCardNumber: String?, getPhoto: Bool?) {
            self.caller = caller
            self.verifyChannel = verifyChannel
            self.verifyResult = verifyResult
            self.name = name
            self.idCardNumber = idCardNumber
            self.getPhoto = getPhoto
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case verifyChannel = "VerifyChannel"
            case verifyResult = "VerifyResult"
            case name = "Name"
            case idCardNumber = "IdCardNumber"
            case getPhoto = "GetPhoto"
        }
    }
    
    /// CheckFaceIdentify返回参数结构体
    public struct CheckFaceIdentifyResponse: TCResponseModel {
        /// 核身结果; 0:通过,1:不通过
        public let result: Int64
        
        /// 核身结果描述
        public let description: String
        
        /// 渠道名
        public let channelName: String
        
        /// 认证通过时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifiedOn: Int64?
        
        /// 核身流水号
        public let serialNumber: String
        
        /// 渠道核身服务器IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyServerIp: String?
        
        /// 核身照片文件名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let photoFileName: String?
        
        /// 核身照片内容base64(文件格式见文件名后缀,一般为jpg)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let photoFileData: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case channelName = "ChannelName"
            case verifiedOn = "VerifiedOn"
            case serialNumber = "SerialNumber"
            case verifyServerIp = "VerifyServerIp"
            case photoFileName = "PhotoFileName"
            case photoFileData = "PhotoFileData"
            case requestId = "RequestId"
        }
    }
}
