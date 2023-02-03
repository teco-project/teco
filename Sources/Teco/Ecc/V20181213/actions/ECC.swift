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

extension Ecc {
    /// ECC请求参数结构体
    public struct ECCRequest: TCRequestModel {
        /// 作文文本，必填
        public let content: String

        /// 作文题目，可选参数
        public let title: String?

        /// 年级标准， 默认以cet4为标准，取值与意义如下：elementary 小学，grade7 grade8 grade9分别对应初一，初二，初三。 grade10 grade11 grade12 分别对应高一，高二，高三，以及cet4和cet6 分别表示 英语4级和6级。
        public let grade: String?

        /// 作文提纲，可选参数，作文的写作要求。
        public let requirement: String?

        /// 范文标题，可选参数，本接口可以依据提供的范文对作文进行评分。
        public let modelTitle: String?

        /// 范文内容，可选参数，同上，范文的正文部分。
        public let modelContent: String?

        /// 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数（暂时无需传入）。
        public let eccAppid: String?

        /// 异步模式标识，0：同步模式，1：异步模式，默认为同步模式
        public let isAsync: Int64?

        /// 图像识别唯一标识，一次识别一个 SessionId。当传入此前识别接口使用过的 SessionId，则本次批改按图像批改价格收费；如使用了识别接口且本次没有传入 SessionId，则需要加取文本批改的费用；如果直接使用文本批改接口，则只收取文本批改的费用
        public let sessionId: String?

        public init(content: String, title: String? = nil, grade: String? = nil, requirement: String? = nil, modelTitle: String? = nil, modelContent: String? = nil, eccAppid: String? = nil, isAsync: Int64? = nil, sessionId: String? = nil) {
            self.content = content
            self.title = title
            self.grade = grade
            self.requirement = requirement
            self.modelTitle = modelTitle
            self.modelContent = modelContent
            self.eccAppid = eccAppid
            self.isAsync = isAsync
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case title = "Title"
            case grade = "Grade"
            case requirement = "Requirement"
            case modelTitle = "ModelTitle"
            case modelContent = "ModelContent"
            case eccAppid = "EccAppid"
            case isAsync = "IsAsync"
            case sessionId = "SessionId"
        }
    }

    /// ECC返回参数结构体
    public struct ECCResponse: TCResponseModel {
        /// 整体的批改结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CorrectData?

        /// 任务 id，用于查询接口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 纯文本英语作文批改
    ///
    /// 接口请求域名： ecc.tencentcloudapi.com
    /// 纯文本英语作文批改
    @inlinable
    public func ecc(_ input: ECCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ECCResponse> {
        self.client.execute(action: "ECC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 纯文本英语作文批改
    ///
    /// 接口请求域名： ecc.tencentcloudapi.com
    /// 纯文本英语作文批改
    @inlinable
    public func ecc(_ input: ECCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ECCResponse {
        try await self.client.execute(action: "ECC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 纯文本英语作文批改
    ///
    /// 接口请求域名： ecc.tencentcloudapi.com
    /// 纯文本英语作文批改
    @inlinable
    public func ecc(content: String, title: String? = nil, grade: String? = nil, requirement: String? = nil, modelTitle: String? = nil, modelContent: String? = nil, eccAppid: String? = nil, isAsync: Int64? = nil, sessionId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ECCResponse> {
        let input = ECCRequest(content: content, title: title, grade: grade, requirement: requirement, modelTitle: modelTitle, modelContent: modelContent, eccAppid: eccAppid, isAsync: isAsync, sessionId: sessionId)
        return self.client.execute(action: "ECC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 纯文本英语作文批改
    ///
    /// 接口请求域名： ecc.tencentcloudapi.com
    /// 纯文本英语作文批改
    @inlinable
    public func ecc(content: String, title: String? = nil, grade: String? = nil, requirement: String? = nil, modelTitle: String? = nil, modelContent: String? = nil, eccAppid: String? = nil, isAsync: Int64? = nil, sessionId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ECCResponse {
        let input = ECCRequest(content: content, title: title, grade: grade, requirement: requirement, modelTitle: modelTitle, modelContent: modelContent, eccAppid: eccAppid, isAsync: isAsync, sessionId: sessionId)
        return try await self.client.execute(action: "ECC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
