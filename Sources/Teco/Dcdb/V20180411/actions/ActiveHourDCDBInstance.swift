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

extension Dcdb {
    /// ActiveHourDCDBInstance请求参数结构体
    public struct ActiveHourDCDBInstanceRequest: TCRequestModel {
        /// 待升级的实例ID列表。形如：["dcdbt-ow728lmc"]，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// ActiveHourDCDBInstance返回参数结构体
    public struct ActiveHourDCDBInstanceResponse: TCResponseModel {
        /// 解隔离成功的实例id列表
        public let successInstanceIds: [String]

        /// 解隔离失败的实例id列表
        public let failedInstanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successInstanceIds = "SuccessInstanceIds"
            case failedInstanceIds = "FailedInstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 解隔离DCDB后付费实例
    @inlinable
    public func activeHourDCDBInstance(_ input: ActiveHourDCDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ActiveHourDCDBInstanceResponse > {
        self.client.execute(action: "ActiveHourDCDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解隔离DCDB后付费实例
    @inlinable
    public func activeHourDCDBInstance(_ input: ActiveHourDCDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActiveHourDCDBInstanceResponse {
        try await self.client.execute(action: "ActiveHourDCDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解隔离DCDB后付费实例
    @inlinable
    public func activeHourDCDBInstance(instanceIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ActiveHourDCDBInstanceResponse > {
        self.activeHourDCDBInstance(ActiveHourDCDBInstanceRequest(instanceIds: instanceIds), logger: logger, on: eventLoop)
    }

    /// 解隔离DCDB后付费实例
    @inlinable
    public func activeHourDCDBInstance(instanceIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActiveHourDCDBInstanceResponse {
        try await self.activeHourDCDBInstance(ActiveHourDCDBInstanceRequest(instanceIds: instanceIds), logger: logger, on: eventLoop)
    }
}
