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

extension Tem {
    /// DescribeIngress请求参数结构体
    public struct DescribeIngressRequest: TCRequest {
        /// 环境ID
        public let environmentId: String

        /// 环境namespace
        public let clusterNamespace: String

        /// ingress 规则名
        public let ingressName: String

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(environmentId: String, clusterNamespace: String, ingressName: String, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.clusterNamespace = clusterNamespace
            self.ingressName = ingressName
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case clusterNamespace = "ClusterNamespace"
            case ingressName = "IngressName"
            case sourceChannel = "SourceChannel"
        }
    }

    /// DescribeIngress返回参数结构体
    public struct DescribeIngressResponse: TCResponse {
        /// Ingress 规则配置
        public let result: IngressInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询 Ingress 规则
    @inlinable
    public func describeIngress(_ input: DescribeIngressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIngressResponse> {
        self.client.execute(action: "DescribeIngress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 Ingress 规则
    @inlinable
    public func describeIngress(_ input: DescribeIngressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIngressResponse {
        try await self.client.execute(action: "DescribeIngress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 Ingress 规则
    @inlinable
    public func describeIngress(environmentId: String, clusterNamespace: String, ingressName: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIngressResponse> {
        self.describeIngress(.init(environmentId: environmentId, clusterNamespace: clusterNamespace, ingressName: ingressName, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 Ingress 规则
    @inlinable
    public func describeIngress(environmentId: String, clusterNamespace: String, ingressName: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIngressResponse {
        try await self.describeIngress(.init(environmentId: environmentId, clusterNamespace: clusterNamespace, ingressName: ingressName, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
