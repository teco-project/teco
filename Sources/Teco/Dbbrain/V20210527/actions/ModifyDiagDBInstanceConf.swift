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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dbbrain {
    /// ModifyDiagDBInstanceConf请求参数结构体
    public struct ModifyDiagDBInstanceConfRequest: TCRequestModel {
        /// 实例配置，包括巡检、概览开关等。
        public let instanceConfs: InstanceConfs

        /// 生效实例地域，取值为"All"，代表全地域。
        public let regions: String

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL。
        public let product: String

        /// 指定更改巡检状态的实例ID。
        public let instanceIds: [String]?

        public init(instanceConfs: InstanceConfs, regions: String, product: String, instanceIds: [String]? = nil) {
            self.instanceConfs = instanceConfs
            self.regions = regions
            self.product = product
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceConfs = "InstanceConfs"
            case regions = "Regions"
            case product = "Product"
            case instanceIds = "InstanceIds"
        }
    }

    /// ModifyDiagDBInstanceConf返回参数结构体
    public struct ModifyDiagDBInstanceConfResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例巡检开关状态
    ///
    /// 修改实例巡检开关。
    @inlinable @discardableResult
    public func modifyDiagDBInstanceConf(_ input: ModifyDiagDBInstanceConfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDiagDBInstanceConfResponse> {
        self.client.execute(action: "ModifyDiagDBInstanceConf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例巡检开关状态
    ///
    /// 修改实例巡检开关。
    @inlinable @discardableResult
    public func modifyDiagDBInstanceConf(_ input: ModifyDiagDBInstanceConfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiagDBInstanceConfResponse {
        try await self.client.execute(action: "ModifyDiagDBInstanceConf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例巡检开关状态
    ///
    /// 修改实例巡检开关。
    @inlinable @discardableResult
    public func modifyDiagDBInstanceConf(instanceConfs: InstanceConfs, regions: String, product: String, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDiagDBInstanceConfResponse> {
        self.modifyDiagDBInstanceConf(.init(instanceConfs: instanceConfs, regions: regions, product: product, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例巡检开关状态
    ///
    /// 修改实例巡检开关。
    @inlinable @discardableResult
    public func modifyDiagDBInstanceConf(instanceConfs: InstanceConfs, regions: String, product: String, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiagDBInstanceConfResponse {
        try await self.modifyDiagDBInstanceConf(.init(instanceConfs: instanceConfs, regions: regions, product: product, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
