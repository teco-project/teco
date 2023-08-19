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

import Logging
import NIOCore
import TecoCore

extension Tat {
    /// InvokeCommand请求参数结构体
    public struct InvokeCommandRequest: TCRequest {
        /// 待触发的命令ID。
        public let commandId: String

        /// 待执行命令的实例ID列表，上限100。
        public let instanceIds: [String]

        /// Command 的自定义参数。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        /// key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        /// 如果未提供该参数取值，将使用 Command 的 DefaultParameters 进行替换。
        /// 自定义参数最多20个。
        /// 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        public let parameters: String?

        /// 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        /// 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。若不填，默认以 Command 配置的 Username 执行。
        public let username: String?

        /// 命令执行路径, 默认以Command配置的WorkingDirectory执行。
        public let workingDirectory: String?

        /// 命令超时时间，取值范围[1, 86400]。默认以Command配置的Timeout执行。
        public let timeout: UInt64?

        /// 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        public let outputCOSBucketUrl: String?

        /// 指定日志在cos bucket中的目录，目录命名有如下规则：
        /// 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        /// 2. 用 / 分割路径，可快速创建子目录。
        /// 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称。
        public let outputCOSKeyPrefix: String?

        public init(commandId: String, instanceIds: [String], parameters: String? = nil, username: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil) {
            self.commandId = commandId
            self.instanceIds = instanceIds
            self.parameters = parameters
            self.username = username
            self.workingDirectory = workingDirectory
            self.timeout = timeout
            self.outputCOSBucketUrl = outputCOSBucketUrl
            self.outputCOSKeyPrefix = outputCOSKeyPrefix
        }

        enum CodingKeys: String, CodingKey {
            case commandId = "CommandId"
            case instanceIds = "InstanceIds"
            case parameters = "Parameters"
            case username = "Username"
            case workingDirectory = "WorkingDirectory"
            case timeout = "Timeout"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// InvokeCommand返回参数结构体
    public struct InvokeCommandResponse: TCResponse {
        /// 执行活动ID。
        public let invocationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invocationId = "InvocationId"
            case requestId = "RequestId"
        }
    }

    /// 触发命令
    ///
    /// 在指定的实例上触发命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 RUNNING 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func invokeCommand(_ input: InvokeCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeCommandResponse> {
        self.client.execute(action: "InvokeCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 触发命令
    ///
    /// 在指定的实例上触发命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 RUNNING 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func invokeCommand(_ input: InvokeCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeCommandResponse {
        try await self.client.execute(action: "InvokeCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 触发命令
    ///
    /// 在指定的实例上触发命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 RUNNING 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func invokeCommand(commandId: String, instanceIds: [String], parameters: String? = nil, username: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeCommandResponse> {
        self.invokeCommand(.init(commandId: commandId, instanceIds: instanceIds, parameters: parameters, username: username, workingDirectory: workingDirectory, timeout: timeout, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }

    /// 触发命令
    ///
    /// 在指定的实例上触发命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 RUNNING 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func invokeCommand(commandId: String, instanceIds: [String], parameters: String? = nil, username: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeCommandResponse {
        try await self.invokeCommand(.init(commandId: commandId, instanceIds: instanceIds, parameters: parameters, username: username, workingDirectory: workingDirectory, timeout: timeout, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }
}
