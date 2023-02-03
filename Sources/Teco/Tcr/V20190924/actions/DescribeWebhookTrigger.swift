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

extension Tcr {
    /// DescribeWebhookTrigger请求参数结构体
    public struct DescribeWebhookTriggerRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 分页单页数量
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        /// 命名空间
        public let namespace: String?

        public init(registryId: String, limit: Int64? = nil, offset: Int64? = nil, namespace: String? = nil) {
            self.registryId = registryId
            self.limit = limit
            self.offset = offset
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case limit = "Limit"
            case offset = "Offset"
            case namespace = "Namespace"
        }
    }

    /// DescribeWebhookTrigger返回参数结构体
    public struct DescribeWebhookTriggerResponse: TCResponseModel {
        /// 触发器总数
        public let totalCount: Int64

        /// 触发器列表
        public let triggers: [WebhookTrigger]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case triggers = "Triggers"
            case requestId = "RequestId"
        }
    }

    /// 查询触发器
    @inlinable
    public func describeWebhookTrigger(_ input: DescribeWebhookTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebhookTriggerResponse> {
        self.client.execute(action: "DescribeWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询触发器
    @inlinable
    public func describeWebhookTrigger(_ input: DescribeWebhookTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebhookTriggerResponse {
        try await self.client.execute(action: "DescribeWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询触发器
    @inlinable
    public func describeWebhookTrigger(registryId: String, limit: Int64? = nil, offset: Int64? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebhookTriggerResponse> {
        let input = DescribeWebhookTriggerRequest(registryId: registryId, limit: limit, offset: offset, namespace: namespace)
        return self.client.execute(action: "DescribeWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询触发器
    @inlinable
    public func describeWebhookTrigger(registryId: String, limit: Int64? = nil, offset: Int64? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebhookTriggerResponse {
        let input = DescribeWebhookTriggerRequest(registryId: registryId, limit: limit, offset: offset, namespace: namespace)
        return try await self.client.execute(action: "DescribeWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
