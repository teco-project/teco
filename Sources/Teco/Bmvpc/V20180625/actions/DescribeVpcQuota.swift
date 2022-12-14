//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Bmvpc {
    /// DescribeVpcQuota请求参数结构体
    public struct DescribeVpcQuotaRequest: TCRequestModel {
        /// 类型
        public let typeIds: [UInt64]

        public init(typeIds: [UInt64]) {
            self.typeIds = typeIds
        }

        enum CodingKeys: String, CodingKey {
            case typeIds = "TypeIds"
        }
    }

    /// DescribeVpcQuota返回参数结构体
    public struct DescribeVpcQuotaResponse: TCResponseModel {
        /// 配额信息
        public let vpcQuotaSet: [VpcQuota]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcQuotaSet = "VpcQuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 获取黑石私有网络的配额
    ///
    /// 本接口（DescribeVpcQuota）用于查询用户VPC相关配额限制。
    @inlinable
    public func describeVpcQuota(_ input: DescribeVpcQuotaRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcQuotaResponse > {
        self.client.execute(action: "DescribeVpcQuota", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑石私有网络的配额
    ///
    /// 本接口（DescribeVpcQuota）用于查询用户VPC相关配额限制。
    @inlinable
    public func describeVpcQuota(_ input: DescribeVpcQuotaRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcQuotaResponse {
        try await self.client.execute(action: "DescribeVpcQuota", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑石私有网络的配额
    ///
    /// 本接口（DescribeVpcQuota）用于查询用户VPC相关配额限制。
    @inlinable
    public func describeVpcQuota(typeIds: [UInt64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcQuotaResponse > {
        self.describeVpcQuota(DescribeVpcQuotaRequest(typeIds: typeIds), logger: logger, on: eventLoop)
    }

    /// 获取黑石私有网络的配额
    ///
    /// 本接口（DescribeVpcQuota）用于查询用户VPC相关配额限制。
    @inlinable
    public func describeVpcQuota(typeIds: [UInt64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcQuotaResponse {
        try await self.describeVpcQuota(DescribeVpcQuotaRequest(typeIds: typeIds), logger: logger, on: eventLoop)
    }
}
