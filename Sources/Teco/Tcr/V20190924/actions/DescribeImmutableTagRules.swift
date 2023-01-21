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
    /// DescribeImmutableTagRules请求参数结构体
    public struct DescribeImmutableTagRulesRequest: TCRequestModel {
        /// 实例 Id
        public let registryId: String

        public init(registryId: String) {
            self.registryId = registryId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }

    /// DescribeImmutableTagRules返回参数结构体
    public struct DescribeImmutableTagRulesResponse: TCResponseModel {
        /// 规则列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rules: [ImmutableTagRule]?

        /// 未创建规则的命名空间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let emptyNs: [String]?

        /// 规则总量
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case emptyNs = "EmptyNs"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 列出镜像不可变规则
    @inlinable
    public func describeImmutableTagRules(_ input: DescribeImmutableTagRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImmutableTagRulesResponse> {
        self.client.execute(action: "DescribeImmutableTagRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出镜像不可变规则
    @inlinable
    public func describeImmutableTagRules(_ input: DescribeImmutableTagRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImmutableTagRulesResponse {
        try await self.client.execute(action: "DescribeImmutableTagRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出镜像不可变规则
    @inlinable
    public func describeImmutableTagRules(registryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImmutableTagRulesResponse> {
        self.describeImmutableTagRules(DescribeImmutableTagRulesRequest(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }

    /// 列出镜像不可变规则
    @inlinable
    public func describeImmutableTagRules(registryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImmutableTagRulesResponse {
        try await self.describeImmutableTagRules(DescribeImmutableTagRulesRequest(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }
}
