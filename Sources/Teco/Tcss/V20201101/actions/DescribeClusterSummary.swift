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

import Logging
import NIOCore
import TecoCore

extension Tcss {
    /// DescribeClusterSummary请求参数结构体
    public struct DescribeClusterSummaryRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeClusterSummary返回参数结构体
    public struct DescribeClusterSummaryResponse: TCResponse {
        /// 集群总数
        public let totalCount: UInt64

        /// 有风险的集群数量
        public let riskClusterCount: UInt64

        /// 未检查的集群数量
        public let uncheckClusterCount: UInt64

        /// 托管集群数量
        public let managedClusterCount: UInt64

        /// 独立集群数量
        public let independentClusterCount: UInt64

        /// 无风险的集群数量
        public let noRiskClusterCount: UInt64

        /// 已经检查集群数
        public let checkedClusterCount: UInt64

        /// 自动检查集群数
        public let autoCheckClusterCount: UInt64

        /// 手动检查集群数
        public let manualCheckClusterCount: UInt64

        /// 检查失败集群数
        public let failedClusterCount: UInt64

        /// 未导入的集群数量
        public let notImportedClusterCount: UInt64

        /// eks集群数量
        public let serverlessClusterCount: UInt64

        /// TKE集群数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tkeClusterCount: UInt64?

        /// 用户自建腾讯云集群数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userCreateTencentClusterCount: UInt64?

        /// 用户自建集群混合云数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userCreateHybridClusterCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case riskClusterCount = "RiskClusterCount"
            case uncheckClusterCount = "UncheckClusterCount"
            case managedClusterCount = "ManagedClusterCount"
            case independentClusterCount = "IndependentClusterCount"
            case noRiskClusterCount = "NoRiskClusterCount"
            case checkedClusterCount = "CheckedClusterCount"
            case autoCheckClusterCount = "AutoCheckClusterCount"
            case manualCheckClusterCount = "ManualCheckClusterCount"
            case failedClusterCount = "FailedClusterCount"
            case notImportedClusterCount = "NotImportedClusterCount"
            case serverlessClusterCount = "ServerlessClusterCount"
            case tkeClusterCount = "TkeClusterCount"
            case userCreateTencentClusterCount = "UserCreateTencentClusterCount"
            case userCreateHybridClusterCount = "UserCreateHybridClusterCount"
            case requestId = "RequestId"
        }
    }

    /// 查询用户集群资产总览
    @inlinable
    public func describeClusterSummary(_ input: DescribeClusterSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterSummaryResponse> {
        self.client.execute(action: "DescribeClusterSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户集群资产总览
    @inlinable
    public func describeClusterSummary(_ input: DescribeClusterSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterSummaryResponse {
        try await self.client.execute(action: "DescribeClusterSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户集群资产总览
    @inlinable
    public func describeClusterSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterSummaryResponse> {
        self.describeClusterSummary(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户集群资产总览
    @inlinable
    public func describeClusterSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterSummaryResponse {
        try await self.describeClusterSummary(.init(), region: region, logger: logger, on: eventLoop)
    }
}
