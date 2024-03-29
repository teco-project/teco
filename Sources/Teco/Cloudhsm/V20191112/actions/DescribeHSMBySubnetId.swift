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

extension Cloudhsm {
    /// DescribeHSMBySubnetId请求参数结构体
    public struct DescribeHSMBySubnetIdRequest: TCRequest {
        /// Subnet标识符
        public let subnetId: String

        public init(subnetId: String) {
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
        }
    }

    /// DescribeHSMBySubnetId返回参数结构体
    public struct DescribeHSMBySubnetIdResponse: TCResponse {
        /// HSM数量
        public let totalCount: Int64

        /// 作为查询条件的SubnetId
        public let subnetId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case subnetId = "SubnetId"
            case requestId = "RequestId"
        }
    }

    /// 通过SubnetId获取Hsm资源数
    @inlinable
    public func describeHSMBySubnetId(_ input: DescribeHSMBySubnetIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHSMBySubnetIdResponse> {
        self.client.execute(action: "DescribeHSMBySubnetId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过SubnetId获取Hsm资源数
    @inlinable
    public func describeHSMBySubnetId(_ input: DescribeHSMBySubnetIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHSMBySubnetIdResponse {
        try await self.client.execute(action: "DescribeHSMBySubnetId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过SubnetId获取Hsm资源数
    @inlinable
    public func describeHSMBySubnetId(subnetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHSMBySubnetIdResponse> {
        self.describeHSMBySubnetId(.init(subnetId: subnetId), region: region, logger: logger, on: eventLoop)
    }

    /// 通过SubnetId获取Hsm资源数
    @inlinable
    public func describeHSMBySubnetId(subnetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHSMBySubnetIdResponse {
        try await self.describeHSMBySubnetId(.init(subnetId: subnetId), region: region, logger: logger, on: eventLoop)
    }
}
