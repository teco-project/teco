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

extension Tione {
    /// DeleteNotebookLifecycleScript请求参数结构体
    public struct DeleteNotebookLifecycleScriptRequest: TCRequest {
        /// 生命周期脚本名称
        public let notebookLifecycleScriptsName: String

        /// 是否忽略已关联的 notebook 实例强行删除生命周期脚本，默认 false
        public let forcible: Bool?

        public init(notebookLifecycleScriptsName: String, forcible: Bool? = nil) {
            self.notebookLifecycleScriptsName = notebookLifecycleScriptsName
            self.forcible = forcible
        }

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsName = "NotebookLifecycleScriptsName"
            case forcible = "Forcible"
        }
    }

    /// DeleteNotebookLifecycleScript返回参数结构体
    public struct DeleteNotebookLifecycleScriptResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Notebook生命周期脚本
    @inlinable @discardableResult
    public func deleteNotebookLifecycleScript(_ input: DeleteNotebookLifecycleScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotebookLifecycleScriptResponse> {
        self.client.execute(action: "DeleteNotebookLifecycleScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Notebook生命周期脚本
    @inlinable @discardableResult
    public func deleteNotebookLifecycleScript(_ input: DeleteNotebookLifecycleScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotebookLifecycleScriptResponse {
        try await self.client.execute(action: "DeleteNotebookLifecycleScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Notebook生命周期脚本
    @inlinable @discardableResult
    public func deleteNotebookLifecycleScript(notebookLifecycleScriptsName: String, forcible: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotebookLifecycleScriptResponse> {
        self.deleteNotebookLifecycleScript(.init(notebookLifecycleScriptsName: notebookLifecycleScriptsName, forcible: forcible), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Notebook生命周期脚本
    @inlinable @discardableResult
    public func deleteNotebookLifecycleScript(notebookLifecycleScriptsName: String, forcible: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotebookLifecycleScriptResponse {
        try await self.deleteNotebookLifecycleScript(.init(notebookLifecycleScriptsName: notebookLifecycleScriptsName, forcible: forcible), region: region, logger: logger, on: eventLoop)
    }
}
