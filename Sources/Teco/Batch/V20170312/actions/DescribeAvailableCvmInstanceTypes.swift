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

extension Batch {
    /// DescribeAvailableCvmInstanceTypes请求参数结构体
    public struct DescribeAvailableCvmInstanceTypesRequest: TCRequestModel {
        /// 过滤条件。
        /// <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        /// <li> instance-family String - 是否必填：否 -（过滤条件）按照机型系列过滤。实例机型系列形如：S1、I1、M1等。</li>
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeAvailableCvmInstanceTypes返回参数结构体
    public struct DescribeAvailableCvmInstanceTypesResponse: TCResponseModel {
        /// 机型配置数组
        public let instanceTypeConfigSet: [InstanceTypeConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceTypeConfigSet = "InstanceTypeConfigSet"
            case requestId = "RequestId"
        }
    }

    /// 获取批量计算可用的CVM机型配置信息
    ///
    /// 查看可用的CVM机型配置信息
    @inlinable
    public func describeAvailableCvmInstanceTypes(_ input: DescribeAvailableCvmInstanceTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAvailableCvmInstanceTypesResponse > {
        self.client.execute(action: "DescribeAvailableCvmInstanceTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取批量计算可用的CVM机型配置信息
    ///
    /// 查看可用的CVM机型配置信息
    @inlinable
    public func describeAvailableCvmInstanceTypes(_ input: DescribeAvailableCvmInstanceTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableCvmInstanceTypesResponse {
        try await self.client.execute(action: "DescribeAvailableCvmInstanceTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取批量计算可用的CVM机型配置信息
    ///
    /// 查看可用的CVM机型配置信息
    @inlinable
    public func describeAvailableCvmInstanceTypes(filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAvailableCvmInstanceTypesResponse > {
        self.describeAvailableCvmInstanceTypes(DescribeAvailableCvmInstanceTypesRequest(filters: filters), logger: logger, on: eventLoop)
    }

    /// 获取批量计算可用的CVM机型配置信息
    ///
    /// 查看可用的CVM机型配置信息
    @inlinable
    public func describeAvailableCvmInstanceTypes(filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableCvmInstanceTypesResponse {
        try await self.describeAvailableCvmInstanceTypes(DescribeAvailableCvmInstanceTypesRequest(filters: filters), logger: logger, on: eventLoop)
    }
}
