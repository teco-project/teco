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

extension Bm {
    /// RunUserCmd请求参数结构体
    public struct RunUserCmdRequest: TCRequestModel {
        /// 自定义脚本ID
        public let cmdId: String

        /// 执行脚本机器的用户名
        public let userName: String

        /// 执行脚本机器的用户名的密码
        public let password: String

        /// 执行脚本的服务器实例
        public let instanceIds: [String]

        /// 执行脚本的参数，必须经过base64编码
        public let cmdParam: String?

        public init(cmdId: String, userName: String, password: String, instanceIds: [String], cmdParam: String? = nil) {
            self.cmdId = cmdId
            self.userName = userName
            self.password = password
            self.instanceIds = instanceIds
            self.cmdParam = cmdParam
        }

        enum CodingKeys: String, CodingKey {
            case cmdId = "CmdId"
            case userName = "UserName"
            case password = "Password"
            case instanceIds = "InstanceIds"
            case cmdParam = "CmdParam"
        }
    }

    /// RunUserCmd返回参数结构体
    public struct RunUserCmdResponse: TCResponseModel {
        /// 运行成功的任务信息列表
        public let successTaskInfoSet: [SuccessTaskInfo]

        /// 运行失败的任务信息列表
        public let failedTaskInfoSet: [FailedTaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successTaskInfoSet = "SuccessTaskInfoSet"
            case failedTaskInfoSet = "FailedTaskInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 运行自定义脚本
    @inlinable
    public func runUserCmd(_ input: RunUserCmdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunUserCmdResponse> {
        self.client.execute(action: "RunUserCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行自定义脚本
    @inlinable
    public func runUserCmd(_ input: RunUserCmdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunUserCmdResponse {
        try await self.client.execute(action: "RunUserCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行自定义脚本
    @inlinable
    public func runUserCmd(cmdId: String, userName: String, password: String, instanceIds: [String], cmdParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunUserCmdResponse> {
        let input = RunUserCmdRequest(cmdId: cmdId, userName: userName, password: password, instanceIds: instanceIds, cmdParam: cmdParam)
        return self.client.execute(action: "RunUserCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行自定义脚本
    @inlinable
    public func runUserCmd(cmdId: String, userName: String, password: String, instanceIds: [String], cmdParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunUserCmdResponse {
        let input = RunUserCmdRequest(cmdId: cmdId, userName: userName, password: password, instanceIds: instanceIds, cmdParam: cmdParam)
        return try await self.client.execute(action: "RunUserCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
