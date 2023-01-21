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

extension Tione {
    /// CreateNotebookLifecycleScript请求参数结构体
    public struct CreateNotebookLifecycleScriptRequest: TCRequestModel {
        /// Notebook生命周期脚本名称
        public let notebookLifecycleScriptsName: String

        /// 创建脚本，base64编码
        /// base64后的脚本长度不能超过16384个字符
        public let createScript: String?

        /// 启动脚本，base64编码
        /// base64后的脚本长度不能超过16384个字符
        public let startScript: String?

        public init(notebookLifecycleScriptsName: String, createScript: String? = nil, startScript: String? = nil) {
            self.notebookLifecycleScriptsName = notebookLifecycleScriptsName
            self.createScript = createScript
            self.startScript = startScript
        }

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsName = "NotebookLifecycleScriptsName"
            case createScript = "CreateScript"
            case startScript = "StartScript"
        }
    }

    /// CreateNotebookLifecycleScript返回参数结构体
    public struct CreateNotebookLifecycleScriptResponse: TCResponseModel {
        /// 生命周期脚本名称
        public let notebookLifecycleScriptsName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsName = "NotebookLifecycleScriptsName"
            case requestId = "RequestId"
        }
    }

    /// 创建Notebook生命周期脚本
    @inlinable
    public func createNotebookLifecycleScript(_ input: CreateNotebookLifecycleScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotebookLifecycleScriptResponse> {
        self.client.execute(action: "CreateNotebookLifecycleScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Notebook生命周期脚本
    @inlinable
    public func createNotebookLifecycleScript(_ input: CreateNotebookLifecycleScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookLifecycleScriptResponse {
        try await self.client.execute(action: "CreateNotebookLifecycleScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Notebook生命周期脚本
    @inlinable
    public func createNotebookLifecycleScript(notebookLifecycleScriptsName: String, createScript: String? = nil, startScript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotebookLifecycleScriptResponse> {
        self.createNotebookLifecycleScript(CreateNotebookLifecycleScriptRequest(notebookLifecycleScriptsName: notebookLifecycleScriptsName, createScript: createScript, startScript: startScript), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Notebook生命周期脚本
    @inlinable
    public func createNotebookLifecycleScript(notebookLifecycleScriptsName: String, createScript: String? = nil, startScript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookLifecycleScriptResponse {
        try await self.createNotebookLifecycleScript(CreateNotebookLifecycleScriptRequest(notebookLifecycleScriptsName: notebookLifecycleScriptsName, createScript: createScript, startScript: startScript), region: region, logger: logger, on: eventLoop)
    }
}
