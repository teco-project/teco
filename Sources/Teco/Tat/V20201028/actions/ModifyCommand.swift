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

import TecoCore

extension Tat {
    /// ModifyCommand请求参数结构体
    public struct ModifyCommandRequest: TCRequestModel {
        /// 命令ID。
        public let commandId: String

        /// 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        public let commandName: String?

        /// 命令描述。不超过120字符。
        public let description: String?

        /// Base64编码后的命令内容，长度不可超过64KB。
        public let content: String?

        /// 命令类型，目前支持取值：SHELL、POWERSHELL。
        public let commandType: String?

        /// 命令执行路径。
        public let workingDirectory: String?

        /// 命令超时时间。取值范围[1, 86400]。
        public let timeout: UInt64?

        /// 启用自定义参数功能时，自定义参数的默认取值。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        /// 采取整体全覆盖式修改，即修改时必须提供所有新默认值。
        /// 必须 Command 的 EnableParameter 为 true 时，才允许修改这个值。
        /// key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        /// 自定义参数最多20个。
        /// 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        public let defaultParameters: String?

        /// 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        /// 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。
        public let username: String?

        /// 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        public let outputCOSBucketUrl: String?

        /// 指定日志在cos bucket中的目录，目录命名有如下规则：
        /// 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        /// 2. 用 / 分割路径，可快速创建子目录。
        /// 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称。
        public let outputCOSKeyPrefix: String?

        public init(commandId: String, commandName: String? = nil, description: String? = nil, content: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, defaultParameters: String? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil) {
            self.commandId = commandId
            self.commandName = commandName
            self.description = description
            self.content = content
            self.commandType = commandType
            self.workingDirectory = workingDirectory
            self.timeout = timeout
            self.defaultParameters = defaultParameters
            self.username = username
            self.outputCOSBucketUrl = outputCOSBucketUrl
            self.outputCOSKeyPrefix = outputCOSKeyPrefix
        }

        enum CodingKeys: String, CodingKey {
            case commandId = "CommandId"
            case commandName = "CommandName"
            case description = "Description"
            case content = "Content"
            case commandType = "CommandType"
            case workingDirectory = "WorkingDirectory"
            case timeout = "Timeout"
            case defaultParameters = "DefaultParameters"
            case username = "Username"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// ModifyCommand返回参数结构体
    public struct ModifyCommandResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改命令
    ///
    /// 此接口用于修改命令。
    @inlinable @discardableResult
    public func modifyCommand(_ input: ModifyCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCommandResponse> {
        self.client.execute(action: "ModifyCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改命令
    ///
    /// 此接口用于修改命令。
    @inlinable @discardableResult
    public func modifyCommand(_ input: ModifyCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCommandResponse {
        try await self.client.execute(action: "ModifyCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改命令
    ///
    /// 此接口用于修改命令。
    @inlinable @discardableResult
    public func modifyCommand(commandId: String, commandName: String? = nil, description: String? = nil, content: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, defaultParameters: String? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCommandResponse> {
        self.modifyCommand(.init(commandId: commandId, commandName: commandName, description: description, content: content, commandType: commandType, workingDirectory: workingDirectory, timeout: timeout, defaultParameters: defaultParameters, username: username, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }

    /// 修改命令
    ///
    /// 此接口用于修改命令。
    @inlinable @discardableResult
    public func modifyCommand(commandId: String, commandName: String? = nil, description: String? = nil, content: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, defaultParameters: String? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCommandResponse {
        try await self.modifyCommand(.init(commandId: commandId, commandName: commandName, description: description, content: content, commandType: commandType, workingDirectory: workingDirectory, timeout: timeout, defaultParameters: defaultParameters, username: username, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }
}
