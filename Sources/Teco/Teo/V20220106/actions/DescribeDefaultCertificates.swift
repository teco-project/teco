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

extension Teo {
    /// DescribeDefaultCertificates请求参数结构体
    public struct DescribeDefaultCertificatesRequest: TCRequestModel {
        /// Zone ID
        public let zoneId: String

        public init(zoneId: String) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribeDefaultCertificates返回参数结构体
    public struct DescribeDefaultCertificatesResponse: TCResponseModel {
        /// 证书总数
        public let totalCount: Int64

        /// 默认证书列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certInfo: [DefaultServerCertInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case certInfo = "CertInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultCertificatesResponse> {
        self.client.execute(action: "DescribeDefaultCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultCertificatesResponse {
        try await self.client.execute(action: "DescribeDefaultCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultCertificatesResponse> {
        self.describeDefaultCertificates(.init(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultCertificatesResponse {
        try await self.describeDefaultCertificates(.init(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
