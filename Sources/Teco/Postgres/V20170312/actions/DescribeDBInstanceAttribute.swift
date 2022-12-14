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

extension Postgres {
    /// DescribeDBInstanceAttribute请求参数结构体
    public struct DescribeDBInstanceAttributeRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// DescribeDBInstanceAttribute返回参数结构体
    public struct DescribeDBInstanceAttributeResponse: TCResponseModel {
        /// 实例详细信息。
        public let dbInstance: DBInstance

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dbInstance = "DBInstance"
            case requestId = "RequestId"
        }
    }

    /// 查询实例详情
    ///
    /// 本接口 (DescribeDBInstanceAttribute) 用于查询某个实例的详情信息。
    @inlinable
    public func describeDBInstanceAttribute(_ input: DescribeDBInstanceAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBInstanceAttributeResponse > {
        self.client.execute(action: "DescribeDBInstanceAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例详情
    ///
    /// 本接口 (DescribeDBInstanceAttribute) 用于查询某个实例的详情信息。
    @inlinable
    public func describeDBInstanceAttribute(_ input: DescribeDBInstanceAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceAttributeResponse {
        try await self.client.execute(action: "DescribeDBInstanceAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例详情
    ///
    /// 本接口 (DescribeDBInstanceAttribute) 用于查询某个实例的详情信息。
    @inlinable
    public func describeDBInstanceAttribute(dbInstanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBInstanceAttributeResponse > {
        self.describeDBInstanceAttribute(DescribeDBInstanceAttributeRequest(dbInstanceId: dbInstanceId), logger: logger, on: eventLoop)
    }

    /// 查询实例详情
    ///
    /// 本接口 (DescribeDBInstanceAttribute) 用于查询某个实例的详情信息。
    @inlinable
    public func describeDBInstanceAttribute(dbInstanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceAttributeResponse {
        try await self.describeDBInstanceAttribute(DescribeDBInstanceAttributeRequest(dbInstanceId: dbInstanceId), logger: logger, on: eventLoop)
    }
}
