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
    /// DescribeIngresses请求参数结构体
    public struct DescribeIngressesRequest: TCRequest {
        /// namespace id
        public let namespaceId: String?

        /// namespace
        public let eksNamespace: String?

        /// 来源渠道
        public let sourceChannel: Int64?

        /// ingress 规则名列表
        public let names: [String]?

        public init(namespaceId: String? = nil, eksNamespace: String? = nil, sourceChannel: Int64? = nil, names: [String]? = nil) {
            self.namespaceId = namespaceId
            self.eksNamespace = eksNamespace
            self.sourceChannel = sourceChannel
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case eksNamespace = "EksNamespace"
            case sourceChannel = "SourceChannel"
            case names = "Names"
        }
    }

    /// DescribeIngresses返回参数结构体
    public struct DescribeIngressesResponse: TCResponse {
        /// ingress 数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [IngressInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询 Ingress 规则列表
    @inlinable
    public func describeIngresses(_ input: DescribeIngressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIngressesResponse> {
        self.client.execute(action: "DescribeIngresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 Ingress 规则列表
    @inlinable
    public func describeIngresses(_ input: DescribeIngressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIngressesResponse {
        try await self.client.execute(action: "DescribeIngresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 Ingress 规则列表
    @inlinable
    public func describeIngresses(namespaceId: String? = nil, eksNamespace: String? = nil, sourceChannel: Int64? = nil, names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIngressesResponse> {
        self.describeIngresses(.init(namespaceId: namespaceId, eksNamespace: eksNamespace, sourceChannel: sourceChannel, names: names), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 Ingress 规则列表
    @inlinable
    public func describeIngresses(namespaceId: String? = nil, eksNamespace: String? = nil, sourceChannel: Int64? = nil, names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIngressesResponse {
        try await self.describeIngresses(.init(namespaceId: namespaceId, eksNamespace: eksNamespace, sourceChannel: sourceChannel, names: names), region: region, logger: logger, on: eventLoop)
    }
}
