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

extension Iotcloud {
    /// DescribePrivateCAs请求参数结构体
    public struct DescribePrivateCAsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribePrivateCAs返回参数结构体
    public struct DescribePrivateCAsResponse: TCResponseModel {
        /// 私有CA证书列表
        public let cAs: [CertInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cAs = "CAs"
            case requestId = "RequestId"
        }
    }

    /// 查询私有CA证书列表
    @inlinable
    public func describePrivateCAs(_ input: DescribePrivateCAsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateCAsResponse> {
        self.client.execute(action: "DescribePrivateCAs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有CA证书列表
    @inlinable
    public func describePrivateCAs(_ input: DescribePrivateCAsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateCAsResponse {
        try await self.client.execute(action: "DescribePrivateCAs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询私有CA证书列表
    @inlinable
    public func describePrivateCAs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateCAsResponse> {
        self.describePrivateCAs(DescribePrivateCAsRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询私有CA证书列表
    @inlinable
    public func describePrivateCAs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateCAsResponse {
        try await self.describePrivateCAs(DescribePrivateCAsRequest(), region: region, logger: logger, on: eventLoop)
    }
}
