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

extension Cynosdb {
    /// DescribeInstanceDetail请求参数结构体
    public struct DescribeInstanceDetailRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceDetail返回参数结构体
    public struct DescribeInstanceDetailResponse: TCResponseModel {
        /// 实例详情
        public let detail: CynosdbInstanceDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detail = "Detail"
            case requestId = "RequestId"
        }
    }

    /// 查询实例详情
    ///
    /// 本接口(DescribeInstanceDetail)用于查询实例详情。
    @inlinable
    public func describeInstanceDetail(_ input: DescribeInstanceDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceDetailResponse > {
        self.client.execute(action: "DescribeInstanceDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例详情
    ///
    /// 本接口(DescribeInstanceDetail)用于查询实例详情。
    @inlinable
    public func describeInstanceDetail(_ input: DescribeInstanceDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDetailResponse {
        try await self.client.execute(action: "DescribeInstanceDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例详情
    ///
    /// 本接口(DescribeInstanceDetail)用于查询实例详情。
    @inlinable
    public func describeInstanceDetail(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceDetailResponse > {
        self.describeInstanceDetail(DescribeInstanceDetailRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }

    /// 查询实例详情
    ///
    /// 本接口(DescribeInstanceDetail)用于查询实例详情。
    @inlinable
    public func describeInstanceDetail(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDetailResponse {
        try await self.describeInstanceDetail(DescribeInstanceDetailRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }
}
