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

extension Cvm {
    /// DescribeInstancesModification请求参数结构体
    public struct DescribeInstancesModificationRequest: TCRequestModel {
        /// 一个或多个待查询的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为20。
        public let instanceIds: [String]

        /// <li>**status**</li>
        /// <p style="padding-left: 30px;">按照【**配置规格状态**】进行过滤。配置规格状态形如：SELL、UNAVAILABLE。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为2。
        public let filters: [Filter]?

        public init(instanceIds: [String], filters: [Filter]? = nil) {
            self.instanceIds = instanceIds
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case filters = "Filters"
        }
    }

    /// DescribeInstancesModification返回参数结构体
    public struct DescribeInstancesModificationResponse: TCResponseModel {
        /// 实例调整的机型配置的数量。
        public let totalCount: Int64

        /// 实例支持调整的机型配置列表。
        public let instanceTypeConfigStatusSet: [InstanceTypeConfigStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceTypeConfigStatusSet = "InstanceTypeConfigStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例可调整配置
    ///
    /// 本接口 (DescribeInstancesModification) 用于查询指定实例支持调整的机型配置。
    @inlinable
    public func describeInstancesModification(_ input: DescribeInstancesModificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesModificationResponse> {
        self.client.execute(action: "DescribeInstancesModification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例可调整配置
    ///
    /// 本接口 (DescribeInstancesModification) 用于查询指定实例支持调整的机型配置。
    @inlinable
    public func describeInstancesModification(_ input: DescribeInstancesModificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesModificationResponse {
        try await self.client.execute(action: "DescribeInstancesModification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例可调整配置
    ///
    /// 本接口 (DescribeInstancesModification) 用于查询指定实例支持调整的机型配置。
    @inlinable
    public func describeInstancesModification(instanceIds: [String], filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesModificationResponse> {
        self.describeInstancesModification(.init(instanceIds: instanceIds, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例可调整配置
    ///
    /// 本接口 (DescribeInstancesModification) 用于查询指定实例支持调整的机型配置。
    @inlinable
    public func describeInstancesModification(instanceIds: [String], filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesModificationResponse {
        try await self.describeInstancesModification(.init(instanceIds: instanceIds, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
