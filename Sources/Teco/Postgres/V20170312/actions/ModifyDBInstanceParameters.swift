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
    /// ModifyDBInstanceParameters请求参数结构体
    public struct ModifyDBInstanceParametersRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        /// 待修改参数及期望值
        public let paramList: [ParamEntry]

        public init(dbInstanceId: String, paramList: [ParamEntry]) {
            self.dbInstanceId = dbInstanceId
            self.paramList = paramList
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case paramList = "ParamList"
        }
    }

    /// ModifyDBInstanceParameters返回参数结构体
    public struct ModifyDBInstanceParametersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量修改参数
    @inlinable @discardableResult
    public func modifyDBInstanceParameters(_ input: ModifyDBInstanceParametersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceParametersResponse> {
        self.client.execute(action: "ModifyDBInstanceParameters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改参数
    @inlinable @discardableResult
    public func modifyDBInstanceParameters(_ input: ModifyDBInstanceParametersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceParametersResponse {
        try await self.client.execute(action: "ModifyDBInstanceParameters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改参数
    @inlinable @discardableResult
    public func modifyDBInstanceParameters(dbInstanceId: String, paramList: [ParamEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceParametersResponse> {
        self.modifyDBInstanceParameters(.init(dbInstanceId: dbInstanceId, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改参数
    @inlinable @discardableResult
    public func modifyDBInstanceParameters(dbInstanceId: String, paramList: [ParamEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceParametersResponse {
        try await self.modifyDBInstanceParameters(.init(dbInstanceId: dbInstanceId, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }
}
