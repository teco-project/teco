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

extension Redis {
    /// ModifyInstanceAccount请求参数结构体
    public struct ModifyInstanceAccountRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 子账号名称，如果要修改主账号，填root
        public let accountName: String

        /// 子账号密码
        public let accountPassword: String?

        /// 子账号描述信息
        public let remark: String?

        /// 路由策略：填写master或者replication，表示主节点或者从节点
        public let readonlyPolicy: [String]?

        /// 子账号读写策略：填写r、w、rw，表示只读，只写，读写策略
        public let privilege: String?

        /// true表示将主账号切换为免密账号，这里只适用于主账号，子账号不可免密
        public let noAuth: Bool?

        public init(instanceId: String, accountName: String, accountPassword: String? = nil, remark: String? = nil, readonlyPolicy: [String]? = nil, privilege: String? = nil, noAuth: Bool? = nil) {
            self.instanceId = instanceId
            self.accountName = accountName
            self.accountPassword = accountPassword
            self.remark = remark
            self.readonlyPolicy = readonlyPolicy
            self.privilege = privilege
            self.noAuth = noAuth
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accountName = "AccountName"
            case accountPassword = "AccountPassword"
            case remark = "Remark"
            case readonlyPolicy = "ReadonlyPolicy"
            case privilege = "Privilege"
            case noAuth = "NoAuth"
        }
    }

    /// ModifyInstanceAccount返回参数结构体
    public struct ModifyInstanceAccountResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例子账号
    @inlinable
    public func modifyInstanceAccount(_ input: ModifyInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceAccountResponse> {
        self.client.execute(action: "ModifyInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例子账号
    @inlinable
    public func modifyInstanceAccount(_ input: ModifyInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceAccountResponse {
        try await self.client.execute(action: "ModifyInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例子账号
    @inlinable
    public func modifyInstanceAccount(instanceId: String, accountName: String, accountPassword: String? = nil, remark: String? = nil, readonlyPolicy: [String]? = nil, privilege: String? = nil, noAuth: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceAccountResponse> {
        self.modifyInstanceAccount(ModifyInstanceAccountRequest(instanceId: instanceId, accountName: accountName, accountPassword: accountPassword, remark: remark, readonlyPolicy: readonlyPolicy, privilege: privilege, noAuth: noAuth), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例子账号
    @inlinable
    public func modifyInstanceAccount(instanceId: String, accountName: String, accountPassword: String? = nil, remark: String? = nil, readonlyPolicy: [String]? = nil, privilege: String? = nil, noAuth: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceAccountResponse {
        try await self.modifyInstanceAccount(ModifyInstanceAccountRequest(instanceId: instanceId, accountName: accountName, accountPassword: accountPassword, remark: remark, readonlyPolicy: readonlyPolicy, privilege: privilege, noAuth: noAuth), region: region, logger: logger, on: eventLoop)
    }
}
