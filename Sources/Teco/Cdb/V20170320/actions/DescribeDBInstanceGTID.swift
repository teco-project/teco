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

extension Cdb {
    /// DescribeDBInstanceGTID请求参数结构体
    public struct DescribeDBInstanceGTIDRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBInstanceGTID返回参数结构体
    public struct DescribeDBInstanceGTIDResponse: TCResponseModel {
        /// GTID 是否开通的标记，可能的取值为：0 - 未开通，1 - 已开通。
        public let isGTIDOpen: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isGTIDOpen = "IsGTIDOpen"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据实例的GTID是否开通
    ///
    /// 本接口(DescribeDBInstanceGTID)用于查询云数据库实例是否开通了 GTID，不支持版本为 5.5 以及以下的实例。
    @inlinable
    public func describeDBInstanceGTID(_ input: DescribeDBInstanceGTIDRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceGTIDResponse> {
        self.client.execute(action: "DescribeDBInstanceGTID", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据实例的GTID是否开通
    ///
    /// 本接口(DescribeDBInstanceGTID)用于查询云数据库实例是否开通了 GTID，不支持版本为 5.5 以及以下的实例。
    @inlinable
    public func describeDBInstanceGTID(_ input: DescribeDBInstanceGTIDRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceGTIDResponse {
        try await self.client.execute(action: "DescribeDBInstanceGTID", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据实例的GTID是否开通
    ///
    /// 本接口(DescribeDBInstanceGTID)用于查询云数据库实例是否开通了 GTID，不支持版本为 5.5 以及以下的实例。
    @inlinable
    public func describeDBInstanceGTID(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceGTIDResponse> {
        self.describeDBInstanceGTID(DescribeDBInstanceGTIDRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据实例的GTID是否开通
    ///
    /// 本接口(DescribeDBInstanceGTID)用于查询云数据库实例是否开通了 GTID，不支持版本为 5.5 以及以下的实例。
    @inlinable
    public func describeDBInstanceGTID(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceGTIDResponse {
        try await self.describeDBInstanceGTID(DescribeDBInstanceGTIDRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
