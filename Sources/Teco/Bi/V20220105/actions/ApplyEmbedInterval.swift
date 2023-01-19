//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Bi {
    /// ApplyEmbedInterval请求参数结构体
    public struct ApplyEmbedIntervalRequest: TCRequestModel {
        /// 分享项目id，必选
        public let projectId: UInt64?

        /// 分享页面id，嵌出看板时此为空值0
        public let pageId: UInt64?

        /// 需要申请延期的Token
        public let biToken: String?

        /// 备用字段
        public let extraParam: String?

        /// panel,看板；page，页面
        public let scope: String?

        public init(projectId: UInt64? = nil, pageId: UInt64? = nil, biToken: String? = nil, extraParam: String? = nil, scope: String? = nil) {
            self.projectId = projectId
            self.pageId = pageId
            self.biToken = biToken
            self.extraParam = extraParam
            self.scope = scope
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageId = "PageId"
            case biToken = "BIToken"
            case extraParam = "ExtraParam"
            case scope = "Scope"
        }
    }

    /// ApplyEmbedInterval返回参数结构体
    public struct ApplyEmbedIntervalResponse: TCResponseModel {
        /// 额外参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 结果数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: ApplyEmbedTokenInfo?

        /// 结果描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case extra = "Extra"
            case data = "Data"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 申请延长Token可用时间接口
    ///
    /// 申请延长Token可用时间接口-强鉴权
    @inlinable
    public func applyEmbedInterval(_ input: ApplyEmbedIntervalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyEmbedIntervalResponse> {
        self.client.execute(action: "ApplyEmbedInterval", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请延长Token可用时间接口
    ///
    /// 申请延长Token可用时间接口-强鉴权
    @inlinable
    public func applyEmbedInterval(_ input: ApplyEmbedIntervalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyEmbedIntervalResponse {
        try await self.client.execute(action: "ApplyEmbedInterval", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请延长Token可用时间接口
    ///
    /// 申请延长Token可用时间接口-强鉴权
    @inlinable
    public func applyEmbedInterval(projectId: UInt64? = nil, pageId: UInt64? = nil, biToken: String? = nil, extraParam: String? = nil, scope: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyEmbedIntervalResponse> {
        self.applyEmbedInterval(ApplyEmbedIntervalRequest(projectId: projectId, pageId: pageId, biToken: biToken, extraParam: extraParam, scope: scope), region: region, logger: logger, on: eventLoop)
    }

    /// 申请延长Token可用时间接口
    ///
    /// 申请延长Token可用时间接口-强鉴权
    @inlinable
    public func applyEmbedInterval(projectId: UInt64? = nil, pageId: UInt64? = nil, biToken: String? = nil, extraParam: String? = nil, scope: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyEmbedIntervalResponse {
        try await self.applyEmbedInterval(ApplyEmbedIntervalRequest(projectId: projectId, pageId: pageId, biToken: biToken, extraParam: extraParam, scope: scope), region: region, logger: logger, on: eventLoop)
    }
}
