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

extension Tse {
    /// DescribeCloudNativeAPIGatewayCertificateDetails请求参数结构体
    public struct DescribeCloudNativeAPIGatewayCertificateDetailsRequest: TCRequest {
        /// 网关ID
        public let gatewayId: String

        /// 证书Id
        public let id: String

        public init(gatewayId: String, id: String) {
            self.gatewayId = gatewayId
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case id = "Id"
        }
    }

    /// DescribeCloudNativeAPIGatewayCertificateDetails返回参数结构体
    public struct DescribeCloudNativeAPIGatewayCertificateDetailsResponse: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: KongCertificate?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询云原生网关单个证书详情
    @inlinable
    public func describeCloudNativeAPIGatewayCertificateDetails(_ input: DescribeCloudNativeAPIGatewayCertificateDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayCertificateDetailsResponse> {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayCertificateDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关单个证书详情
    @inlinable
    public func describeCloudNativeAPIGatewayCertificateDetails(_ input: DescribeCloudNativeAPIGatewayCertificateDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayCertificateDetailsResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayCertificateDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云原生网关单个证书详情
    @inlinable
    public func describeCloudNativeAPIGatewayCertificateDetails(gatewayId: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayCertificateDetailsResponse> {
        self.describeCloudNativeAPIGatewayCertificateDetails(.init(gatewayId: gatewayId, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关单个证书详情
    @inlinable
    public func describeCloudNativeAPIGatewayCertificateDetails(gatewayId: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayCertificateDetailsResponse {
        try await self.describeCloudNativeAPIGatewayCertificateDetails(.init(gatewayId: gatewayId, id: id), region: region, logger: logger, on: eventLoop)
    }
}