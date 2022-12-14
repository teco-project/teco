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

extension Lighthouse {
    /// DescribeInstancesTrafficPackages请求参数结构体
    public struct DescribeInstancesTrafficPackagesRequest: TCRequestModel {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeInstancesTrafficPackages返回参数结构体
    public struct DescribeInstancesTrafficPackagesResponse: TCResponseModel {
        /// 符合条件的实例流量包详情数量。
        public let totalCount: Int64

        /// 实例流量包详情列表。
        public let instanceTrafficPackageSet: [InstanceTrafficPackage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceTrafficPackageSet = "InstanceTrafficPackageSet"
            case requestId = "RequestId"
        }
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(_ input: DescribeInstancesTrafficPackagesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesTrafficPackagesResponse > {
        self.client.execute(action: "DescribeInstancesTrafficPackages", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(_ input: DescribeInstancesTrafficPackagesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesTrafficPackagesResponse {
        try await self.client.execute(action: "DescribeInstancesTrafficPackages", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesTrafficPackagesResponse > {
        self.describeInstancesTrafficPackages(DescribeInstancesTrafficPackagesRequest(instanceIds: instanceIds, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesTrafficPackagesResponse {
        try await self.describeInstancesTrafficPackages(DescribeInstancesTrafficPackagesRequest(instanceIds: instanceIds, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
