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
    /// ModifyDBInstanceDeployment请求参数结构体
    public struct ModifyDBInstanceDeploymentRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        /// 实例节点信息。
        public let dbNodeSet: [DBNode]

        /// 切换时间。默认为 立即切换，入参为 0 ：立即切换 。1：指定时间切换。2：维护时间窗口内切换
        public let switchTag: Int64

        /// 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        public let switchStartTime: String?

        /// 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。
        public let switchEndTime: String?

        public init(dbInstanceId: String, dbNodeSet: [DBNode], switchTag: Int64, switchStartTime: String? = nil, switchEndTime: String? = nil) {
            self.dbInstanceId = dbInstanceId
            self.dbNodeSet = dbNodeSet
            self.switchTag = switchTag
            self.switchStartTime = switchStartTime
            self.switchEndTime = switchEndTime
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case dbNodeSet = "DBNodeSet"
            case switchTag = "SwitchTag"
            case switchStartTime = "SwitchStartTime"
            case switchEndTime = "SwitchEndTime"
        }
    }

    /// ModifyDBInstanceDeployment返回参数结构体
    public struct ModifyDBInstanceDeploymentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例部署方式
    ///
    /// 本接口（ModifyDBInstanceDeployment）用于修改节点可用区部署方式，仅支持主实例。
    @inlinable
    public func modifyDBInstanceDeployment(_ input: ModifyDBInstanceDeploymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBInstanceDeploymentResponse > {
        self.client.execute(action: "ModifyDBInstanceDeployment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例部署方式
    ///
    /// 本接口（ModifyDBInstanceDeployment）用于修改节点可用区部署方式，仅支持主实例。
    @inlinable
    public func modifyDBInstanceDeployment(_ input: ModifyDBInstanceDeploymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceDeploymentResponse {
        try await self.client.execute(action: "ModifyDBInstanceDeployment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例部署方式
    ///
    /// 本接口（ModifyDBInstanceDeployment）用于修改节点可用区部署方式，仅支持主实例。
    @inlinable
    public func modifyDBInstanceDeployment(dbInstanceId: String, dbNodeSet: [DBNode], switchTag: Int64, switchStartTime: String? = nil, switchEndTime: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBInstanceDeploymentResponse > {
        self.modifyDBInstanceDeployment(ModifyDBInstanceDeploymentRequest(dbInstanceId: dbInstanceId, dbNodeSet: dbNodeSet, switchTag: switchTag, switchStartTime: switchStartTime, switchEndTime: switchEndTime), logger: logger, on: eventLoop)
    }

    /// 修改实例部署方式
    ///
    /// 本接口（ModifyDBInstanceDeployment）用于修改节点可用区部署方式，仅支持主实例。
    @inlinable
    public func modifyDBInstanceDeployment(dbInstanceId: String, dbNodeSet: [DBNode], switchTag: Int64, switchStartTime: String? = nil, switchEndTime: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceDeploymentResponse {
        try await self.modifyDBInstanceDeployment(ModifyDBInstanceDeploymentRequest(dbInstanceId: dbInstanceId, dbNodeSet: dbNodeSet, switchTag: switchTag, switchStartTime: switchStartTime, switchEndTime: switchEndTime), logger: logger, on: eventLoop)
    }
}
