//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DestroyDBInstance请求参数结构体
    public struct DestroyDBInstanceRequest: TCRequestModel {
        /// 待下线实例ID
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// DestroyDBInstance返回参数结构体
    public struct DestroyDBInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁实例
    ///
    /// 本接口 (DestroyDBInstance) 用于彻底销毁指定DBInstanceId对应的实例，销毁后实例数据将彻底删除，无法找回，只能销毁隔离中的实例。
    @inlinable @discardableResult
    public func destroyDBInstance(_ input: DestroyDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyDBInstanceResponse> {
        self.client.execute(action: "DestroyDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁实例
    ///
    /// 本接口 (DestroyDBInstance) 用于彻底销毁指定DBInstanceId对应的实例，销毁后实例数据将彻底删除，无法找回，只能销毁隔离中的实例。
    @inlinable @discardableResult
    public func destroyDBInstance(_ input: DestroyDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyDBInstanceResponse {
        try await self.client.execute(action: "DestroyDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁实例
    ///
    /// 本接口 (DestroyDBInstance) 用于彻底销毁指定DBInstanceId对应的实例，销毁后实例数据将彻底删除，无法找回，只能销毁隔离中的实例。
    @inlinable @discardableResult
    public func destroyDBInstance(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyDBInstanceResponse> {
        self.destroyDBInstance(DestroyDBInstanceRequest(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁实例
    ///
    /// 本接口 (DestroyDBInstance) 用于彻底销毁指定DBInstanceId对应的实例，销毁后实例数据将彻底删除，无法找回，只能销毁隔离中的实例。
    @inlinable @discardableResult
    public func destroyDBInstance(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyDBInstanceResponse {
        try await self.destroyDBInstance(DestroyDBInstanceRequest(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
