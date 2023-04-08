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

import TecoCore

extension Essbasic {
    /// CreateSignUrl请求参数结构体
    public struct CreateSignUrlRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 签署人ID
        public let userId: String

        /// 文件签署截止时间戳
        public let deadline: Int64

        /// 目录ID。当 SignUrlType 为 CATALOG 时必填
        public let catalogId: String?

        /// 流程ID。当 SignUrlType 为 FLOW 时必填
        public let flowId: String?

        /// 签署链接类型：
        /// 1. FLOW - 单流程签署 (默认)
        /// 2. CATALOG - 目录签署
        public let signUrlType: String?

        /// 发送流程或目录时生成的签署任务ID
        public let signId: String?

        public init(caller: Caller, userId: String, deadline: Int64, catalogId: String? = nil, flowId: String? = nil, signUrlType: String? = nil, signId: String? = nil) {
            self.caller = caller
            self.userId = userId
            self.deadline = deadline
            self.catalogId = catalogId
            self.flowId = flowId
            self.signUrlType = signUrlType
            self.signId = signId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case userId = "UserId"
            case deadline = "Deadline"
            case catalogId = "CatalogId"
            case flowId = "FlowId"
            case signUrlType = "SignUrlType"
            case signId = "SignId"
        }
    }

    /// CreateSignUrl返回参数结构体
    public struct CreateSignUrlResponse: TCResponseModel {
        /// 合同签署链接
        public let signUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signUrl = "SignUrl"
            case requestId = "RequestId"
        }
    }

    /// 生成签署URL
    ///
    /// 此接口（CreateSignUrl）用于生成指定用户的签署URL。
    ///
    /// 注：调用此接口前，请确保您已提前调用了发送流程接口（SendFlow）指定相关签署方。
    @inlinable
    public func createSignUrl(_ input: CreateSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignUrlResponse> {
        self.client.execute(action: "CreateSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成签署URL
    ///
    /// 此接口（CreateSignUrl）用于生成指定用户的签署URL。
    ///
    /// 注：调用此接口前，请确保您已提前调用了发送流程接口（SendFlow）指定相关签署方。
    @inlinable
    public func createSignUrl(_ input: CreateSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignUrlResponse {
        try await self.client.execute(action: "CreateSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成签署URL
    ///
    /// 此接口（CreateSignUrl）用于生成指定用户的签署URL。
    ///
    /// 注：调用此接口前，请确保您已提前调用了发送流程接口（SendFlow）指定相关签署方。
    @inlinable
    public func createSignUrl(caller: Caller, userId: String, deadline: Int64, catalogId: String? = nil, flowId: String? = nil, signUrlType: String? = nil, signId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignUrlResponse> {
        self.createSignUrl(.init(caller: caller, userId: userId, deadline: deadline, catalogId: catalogId, flowId: flowId, signUrlType: signUrlType, signId: signId), region: region, logger: logger, on: eventLoop)
    }

    /// 生成签署URL
    ///
    /// 此接口（CreateSignUrl）用于生成指定用户的签署URL。
    ///
    /// 注：调用此接口前，请确保您已提前调用了发送流程接口（SendFlow）指定相关签署方。
    @inlinable
    public func createSignUrl(caller: Caller, userId: String, deadline: Int64, catalogId: String? = nil, flowId: String? = nil, signUrlType: String? = nil, signId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignUrlResponse {
        try await self.createSignUrl(.init(caller: caller, userId: userId, deadline: deadline, catalogId: catalogId, flowId: flowId, signUrlType: signUrlType, signId: signId), region: region, logger: logger, on: eventLoop)
    }
}
