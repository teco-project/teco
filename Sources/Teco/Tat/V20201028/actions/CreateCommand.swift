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

extension Tat {
    /// CreateCommand请求参数结构体
    public struct CreateCommandRequest: TCRequestModel {
        /// 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        public let commandName: String

        /// Base64编码后的命令内容，长度不可超过64KB。
        public let content: String

        /// 命令描述。不超过120字符。
        public let description: String?

        /// 命令类型，目前支持取值：SHELL、POWERSHELL。默认：SHELL。
        public let commandType: String?

        /// 命令执行路径，对于 SHELL 命令默认为 /root，对于 POWERSHELL 命令默认为 C:\Program Files\qcloud\tat_agent\workdir。
        public let workingDirectory: String?

        /// 命令超时时间，默认60秒。取值范围[1, 86400]。
        public let timeout: UInt64?

        /// 是否启用自定义参数功能。
        /// 一旦创建，此值不提供修改。
        /// 默认值：false。
        public let enableParameter: Bool?

        /// 启用自定义参数功能时，自定义参数的默认取值。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        /// key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        /// 如果InvokeCommand时未提供参数取值，将使用这里的默认值进行替换。
        /// 自定义参数最多20个。
        /// 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        public let defaultParameters: String?

        /// 为命令关联的标签，列表长度不超过10。
        public let tags: [Tag]?

        /// 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        /// 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。默认情况下，在 Linux 实例中以 root 用户执行命令；在Windows 实例中以 System 用户执行命令。
        public let username: String?

        /// 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        public let outputCOSBucketUrl: String?

        /// 指定日志在cos bucket中的目录，目录命名有如下规则：
        /// 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        /// 2. 用 / 分割路径，可快速创建子目录。
        /// 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称
        public let outputCOSKeyPrefix: String?

        public init(commandName: String, content: String, description: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, enableParameter: Bool? = nil, defaultParameters: String? = nil, tags: [Tag]? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil) {
            self.commandName = commandName
            self.content = content
            self.description = description
            self.commandType = commandType
            self.workingDirectory = workingDirectory
            self.timeout = timeout
            self.enableParameter = enableParameter
            self.defaultParameters = defaultParameters
            self.tags = tags
            self.username = username
            self.outputCOSBucketUrl = outputCOSBucketUrl
            self.outputCOSKeyPrefix = outputCOSKeyPrefix
        }

        enum CodingKeys: String, CodingKey {
            case commandName = "CommandName"
            case content = "Content"
            case description = "Description"
            case commandType = "CommandType"
            case workingDirectory = "WorkingDirectory"
            case timeout = "Timeout"
            case enableParameter = "EnableParameter"
            case defaultParameters = "DefaultParameters"
            case tags = "Tags"
            case username = "Username"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// CreateCommand返回参数结构体
    public struct CreateCommandResponse: TCResponseModel {
        /// 命令ID。
        public let commandId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case commandId = "CommandId"
            case requestId = "RequestId"
        }
    }

    /// 创建命令
    ///
    /// 此接口用于创建命令。
    @inlinable
    public func createCommand(_ input: CreateCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCommandResponse> {
        self.client.execute(action: "CreateCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命令
    ///
    /// 此接口用于创建命令。
    @inlinable
    public func createCommand(_ input: CreateCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCommandResponse {
        try await self.client.execute(action: "CreateCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命令
    ///
    /// 此接口用于创建命令。
    @inlinable
    public func createCommand(commandName: String, content: String, description: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, enableParameter: Bool? = nil, defaultParameters: String? = nil, tags: [Tag]? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCommandResponse> {
        self.createCommand(.init(commandName: commandName, content: content, description: description, commandType: commandType, workingDirectory: workingDirectory, timeout: timeout, enableParameter: enableParameter, defaultParameters: defaultParameters, tags: tags, username: username, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }

    /// 创建命令
    ///
    /// 此接口用于创建命令。
    @inlinable
    public func createCommand(commandName: String, content: String, description: String? = nil, commandType: String? = nil, workingDirectory: String? = nil, timeout: UInt64? = nil, enableParameter: Bool? = nil, defaultParameters: String? = nil, tags: [Tag]? = nil, username: String? = nil, outputCOSBucketUrl: String? = nil, outputCOSKeyPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCommandResponse {
        try await self.createCommand(.init(commandName: commandName, content: content, description: description, commandType: commandType, workingDirectory: workingDirectory, timeout: timeout, enableParameter: enableParameter, defaultParameters: defaultParameters, tags: tags, username: username, outputCOSBucketUrl: outputCOSBucketUrl, outputCOSKeyPrefix: outputCOSKeyPrefix), region: region, logger: logger, on: eventLoop)
    }
}
