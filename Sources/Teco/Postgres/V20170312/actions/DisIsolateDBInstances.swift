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

extension Postgres {
    /// DisIsolateDBInstances请求参数结构体
    public struct DisIsolateDBInstancesRequest: TCRequestModel {
        /// 资源ID列表。注意：当前已不支持同时解隔离多个实例，这里只能传入单个实例ID。
        public let dbInstanceIdSet: [String]

        /// 包年包月实例解隔离时购买时常 以月为单位
        public let period: Int64?

        /// 是否使用代金券：true-使用,false-不使用，默认不使用
        public let autoVoucher: Bool?

        /// 代金券id列表
        public let voucherIds: [String]?

        public init(dbInstanceIdSet: [String], period: Int64? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil) {
            self.dbInstanceIdSet = dbInstanceIdSet
            self.period = period
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceIdSet = "DBInstanceIdSet"
            case period = "Period"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
        }
    }

    /// DisIsolateDBInstances返回参数结构体
    public struct DisIsolateDBInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解隔离实例
    ///
    /// 本接口（DisIsolateDBInstances）用于解隔离实例
    @inlinable @discardableResult
    public func disIsolateDBInstances(_ input: DisIsolateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisIsolateDBInstancesResponse> {
        self.client.execute(action: "DisIsolateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解隔离实例
    ///
    /// 本接口（DisIsolateDBInstances）用于解隔离实例
    @inlinable @discardableResult
    public func disIsolateDBInstances(_ input: DisIsolateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisIsolateDBInstancesResponse {
        try await self.client.execute(action: "DisIsolateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解隔离实例
    ///
    /// 本接口（DisIsolateDBInstances）用于解隔离实例
    @inlinable @discardableResult
    public func disIsolateDBInstances(dbInstanceIdSet: [String], period: Int64? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisIsolateDBInstancesResponse> {
        let input = DisIsolateDBInstancesRequest(dbInstanceIdSet: dbInstanceIdSet, period: period, autoVoucher: autoVoucher, voucherIds: voucherIds)
        return self.client.execute(action: "DisIsolateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解隔离实例
    ///
    /// 本接口（DisIsolateDBInstances）用于解隔离实例
    @inlinable @discardableResult
    public func disIsolateDBInstances(dbInstanceIdSet: [String], period: Int64? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisIsolateDBInstancesResponse {
        let input = DisIsolateDBInstancesRequest(dbInstanceIdSet: dbInstanceIdSet, period: period, autoVoucher: autoVoucher, voucherIds: voucherIds)
        return try await self.client.execute(action: "DisIsolateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
