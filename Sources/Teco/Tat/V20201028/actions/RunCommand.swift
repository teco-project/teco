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

extension Tat {
    /// RunCommand请求参数结构体
    public struct RunCommandRequest: TCRequestModel {
        /// Base64编码后的命令内容，长度不可超过64KB。
        public let content: String

        /// 待执行命令的实例ID列表，上限100。支持实例类型：
        /// <li> CVM
        /// <li> LIGHTHOUSE
        public let instanceIds: [String]

        /// 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        public let commandName: String?

        /// 命令描述。不超过120字符。
        public let description: String?

        /// 命令类型，目前支持取值：SHELL、POWERSHELL。默认：SHELL。
        public let commandType: String?

        /// 命令执行路径，对于 SHELL 命令默认为 /root，对于 POWERSHELL 命令默认为 C:\Program Files\qcloud\tat_agent\workdir。
        public let workingDirectory: String?

        /// 命令超时时间，默认60秒。取值范围[1, 86400]。
        public let timeout: UInt64?

        /// 是否保存命令，取值范围：
        /// <li> True：保存
        /// <li> False：不保存
        /// 默认为 False。
        public let saveCommand: Bool?

        /// 是否启用自定义参数功能。
        /// 一旦创建，此值不提供修改。
        /// 默认值：false。
        public let enableParameter: Bool?

        /// 启用自定义参数功能时，自定义参数的默认取值。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        /// key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        /// 如果 Parameters 未提供，将使用这里的默认值进行替换。
        /// 自定义参数最多20个。
        /// 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        public let defaultParameters: String?

        /// Command 的自定义参数。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        /// key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        /// 如果未提供该参数取值，将使用 DefaultParameters 进行替换。
        /// 自定义参数最多20个。
        /// 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        public let parameters: String?

        /// 如果保存命令，可为命令设置标签。列表长度不超过10。
        public let tags: [Tag]?

        /// 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        /// 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。默认情况下，在 Linux 实例中以 root 用户执行命令；在Windows 实例中以 System 用户执行命令。
        public let username: String?

        /// 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        public let outputCOSBucketUrl: String?

        /// 指定日志在cos bucket中的目录，目录命名有如下规则：
        /// 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        /// 2. 用 / 分割路径，可快速创建子目录。
        /// 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称。
        public let outputCOSKeyPrefix: String?

        public init(content: String, instanceIds: [String], commandName: String? = nil, description: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, saveCommand: Bool? = nil, enableParameter: Bool? = nil, defaultParameters: String? = nil, parameters: String? = nil, tags: [Tag]? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil) {
            self.content = content
            self.instanceIds = instanceIds
            self.commandName = commandName
            self.description = description
            self.commandType = commandType
            self.workingDirectory = workingDirectory
            self.timeout = timeout
            self.saveCommand = saveCommand
            self.enableParameter = enableParameter
            self.defaultParameters = defaultParameters
            self.parameters = parameters
            self.tags = tags
            self.username = username
            self.outputCOSBucketUrl = outputCOSBucketUrl
            self.outputCOSKeyPrefix = outputCOSKeyPrefix
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case instanceIds = "InstanceIds"
            case commandName = "CommandName"
            case description = "Description"
            case commandType = "CommandType"
            case workingDirectory = "WorkingDirectory"
            case timeout = "Timeout"
            case saveCommand = "SaveCommand"
            case enableParameter = "EnableParameter"
            case defaultParameters = "DefaultParameters"
            case parameters = "Parameters"
            case tags = "Tags"
            case username = "Username"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// RunCommand返回参数结构体
    public struct RunCommandResponse: TCResponseModel {
        /// 命令ID。
        public let commandId: String

        /// 执行活动ID。
        public let invocationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case commandId = "CommandId"
            case invocationId = "InvocationId"
            case requestId = "RequestId"
        }
    }

    /// 执行命令
    ///
    /// 执行命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 `RUNNING` 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func runCommand(_ input: RunCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunCommandResponse> {
        self.client.execute(action: "RunCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行命令
    ///
    /// 执行命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 `RUNNING` 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func runCommand(_ input: RunCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunCommandResponse {
        try await self.client.execute(action: "RunCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行命令
    ///
    /// 执行命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 `RUNNING` 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func runCommand(content: String, instanceIds: [String], commandName: String? = nil, description: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, saveCommand: Bool? = nil, enableParameter: Bool? = nil, defaultParameters: String? = nil, parameters: String? = nil, tags: [Tag]? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunCommandResponse> {
        self.runCommand(.init(content: content, instanceIds: instanceIds, commandName: commandName, description: description, commandType: commandType, workingDirectory: workingDirectory, timeout: timeout, saveCommand: saveCommand, enableParameter: enableParameter, defaultParameters: defaultParameters, parameters: parameters, tags: tags, username: username, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }

    /// 执行命令
    ///
    /// 执行命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。
    ///
    /// * 如果指定实例未安装 agent，或 agent 不在线，返回失败
    /// * 如果命令类型与 agent 运行环境不符，返回失败
    /// * 指定的实例需要处于 VPC 网络
    /// * 指定的实例需要处于 `RUNNING` 状态
    /// * 不可同时指定 CVM 和 Lighthouse
    @inlinable
    public func runCommand(content: String, instanceIds: [String], commandName: String? = nil, description: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, saveCommand: Bool? = nil, enableParameter: Bool? = nil, defaultParameters: String? = nil, parameters: String? = nil, tags: [Tag]? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunCommandResponse {
        try await self.runCommand(.init(content: content, instanceIds: instanceIds, commandName: commandName, description: description, commandType: commandType, workingDirectory: workingDirectory, timeout: timeout, saveCommand: saveCommand, enableParameter: enableParameter, defaultParameters: defaultParameters, parameters: parameters, tags: tags, username: username, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }
}
