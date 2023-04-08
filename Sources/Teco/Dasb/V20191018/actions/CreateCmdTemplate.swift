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

extension Dasb {
    /// CreateCmdTemplate请求参数结构体
    public struct CreateCmdTemplateRequest: TCRequestModel {
        /// 模板名，最大长度32字符，不能包含空白字符
        public let name: String

        /// 命令列表，\n分隔，最大长度32768字节
        public let cmdList: String

        public init(name: String, cmdList: String) {
            self.name = name
            self.cmdList = cmdList
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case cmdList = "CmdList"
        }
    }

    /// CreateCmdTemplate返回参数结构体
    public struct CreateCmdTemplateResponse: TCResponseModel {
        /// 新建成功后返回的记录ID
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 新建高危命令模板
    @inlinable
    public func createCmdTemplate(_ input: CreateCmdTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCmdTemplateResponse> {
        self.client.execute(action: "CreateCmdTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建高危命令模板
    @inlinable
    public func createCmdTemplate(_ input: CreateCmdTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCmdTemplateResponse {
        try await self.client.execute(action: "CreateCmdTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建高危命令模板
    @inlinable
    public func createCmdTemplate(name: String, cmdList: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCmdTemplateResponse> {
        self.createCmdTemplate(.init(name: name, cmdList: cmdList), region: region, logger: logger, on: eventLoop)
    }

    /// 新建高危命令模板
    @inlinable
    public func createCmdTemplate(name: String, cmdList: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCmdTemplateResponse {
        try await self.createCmdTemplate(.init(name: name, cmdList: cmdList), region: region, logger: logger, on: eventLoop)
    }
}