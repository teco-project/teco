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

extension Ecc {
    /// 图像识别批改
    ///
    /// https://ecc.tencentcloudapi.com/?Action=EHOCR
    /// 图像识别批改接口
    @inlinable
    public func ehocr(_ input: EHOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EHOCRResponse > {
        self.client.execute(action: "EHOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 图像识别批改
    ///
    /// https://ecc.tencentcloudapi.com/?Action=EHOCR
    /// 图像识别批改接口
    @inlinable
    public func ehocr(_ input: EHOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EHOCRResponse {
        try await self.client.execute(action: "EHOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// EHOCR请求参数结构体
    public struct EHOCRRequest: TCRequestModel {
        /// 图片所在的url或base64编码后的图像数据，依据InputType而定
        public let image: String
        
        /// 输出图片类型，0 表示 Image 字段是图片所在的 url，1 表示 Image 字段是 base64 编码后的图像数据
        public let inputType: Int64
        
        /// 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数（暂时无需传入）。
        public let eccAppid: String?
        
        /// 图像识别唯一标识，一次识别一个 SessionId，使用识别功能时 SessionId 可用于使用文本批改接口，此时按图像批改价格收费；如使用文本批改接口时没有传入 SessionId，则需要收取文本批改的费用
        public let sessionId: String?
        
        /// 服务类型，0：“图像识别”，只返回识别结果，1：“图像批改”，同时返回识别结果与批改结果。默认为 0
        public let serverType: Int64?
        
        /// 作文题目，可选参数
        public let title: String?
        
        /// 年级标准， 默认以 cet4 为标准，取值与意义如下：elementary 小学，grade7 grade8 grade9分别对应初一，初二，初三。 grade10 grade11 grade12 分别对应高一，高二，高三，以及 cet4 和 cet6 分别表示 英语4级和6级。
        public let grade: String?
        
        /// 作文提纲，可选参数，作文的写作要求。
        public let requirement: String?
        
        /// 范文标题，可选参数，本接口可以依据提供的范文对作文进行评分。
        public let modelTitle: String?
        
        /// 范文内容，可选参数，同上，范文的正文部分。
        public let modelContent: String?
        
        /// 异步模式标识，0：同步模式，1：异步模式。默认为同步模式
        public let isAsync: Int64?
        
        public init (image: String, inputType: Int64, eccAppid: String?, sessionId: String?, serverType: Int64?, title: String?, grade: String?, requirement: String?, modelTitle: String?, modelContent: String?, isAsync: Int64?) {
            self.image = image
            self.inputType = inputType
            self.eccAppid = eccAppid
            self.sessionId = sessionId
            self.serverType = serverType
            self.title = title
            self.grade = grade
            self.requirement = requirement
            self.modelTitle = modelTitle
            self.modelContent = modelContent
            self.isAsync = isAsync
        }
        
        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case inputType = "InputType"
            case eccAppid = "EccAppid"
            case sessionId = "SessionId"
            case serverType = "ServerType"
            case title = "Title"
            case grade = "Grade"
            case requirement = "Requirement"
            case modelTitle = "ModelTitle"
            case modelContent = "ModelContent"
            case isAsync = "IsAsync"
        }
    }
    
    /// EHOCR返回参数结构体
    public struct EHOCRResponse: TCResponseModel {
        /// 接口返回数据
        public let data: CompostionContext
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}