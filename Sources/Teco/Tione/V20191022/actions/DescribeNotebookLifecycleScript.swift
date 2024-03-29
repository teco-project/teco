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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tione {
    /// DescribeNotebookLifecycleScript请求参数结构体
    public struct DescribeNotebookLifecycleScriptRequest: TCRequest {
        /// 生命周期脚本名称
        public let notebookLifecycleScriptsName: String

        public init(notebookLifecycleScriptsName: String) {
            self.notebookLifecycleScriptsName = notebookLifecycleScriptsName
        }

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsName = "NotebookLifecycleScriptsName"
        }
    }

    /// DescribeNotebookLifecycleScript返回参数结构体
    public struct DescribeNotebookLifecycleScriptResponse: TCResponse {
        /// 生命周期脚本名称
        public let notebookLifecycleScriptsName: String

        /// 创建脚本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createScript: String?

        /// 启动脚本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startScript: String?

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$creationTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date

        /// 最后修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$lastModifiedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastModifiedTime: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsName = "NotebookLifecycleScriptsName"
            case createScript = "CreateScript"
            case startScript = "StartScript"
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
            case requestId = "RequestId"
        }
    }

    /// 查看notebook生命周期脚本详情
    @inlinable
    public func describeNotebookLifecycleScript(_ input: DescribeNotebookLifecycleScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookLifecycleScriptResponse> {
        self.client.execute(action: "DescribeNotebookLifecycleScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本详情
    @inlinable
    public func describeNotebookLifecycleScript(_ input: DescribeNotebookLifecycleScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookLifecycleScriptResponse {
        try await self.client.execute(action: "DescribeNotebookLifecycleScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看notebook生命周期脚本详情
    @inlinable
    public func describeNotebookLifecycleScript(notebookLifecycleScriptsName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookLifecycleScriptResponse> {
        self.describeNotebookLifecycleScript(.init(notebookLifecycleScriptsName: notebookLifecycleScriptsName), region: region, logger: logger, on: eventLoop)
    }

    /// 查看notebook生命周期脚本详情
    @inlinable
    public func describeNotebookLifecycleScript(notebookLifecycleScriptsName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookLifecycleScriptResponse {
        try await self.describeNotebookLifecycleScript(.init(notebookLifecycleScriptsName: notebookLifecycleScriptsName), region: region, logger: logger, on: eventLoop)
    }
}
