//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Vod {
    /// DeleteProcedureTemplate请求参数结构体
    public struct DeleteProcedureTemplateRequest: TCRequestModel {
        /// 任务流名字。
        public let name: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(name: String, subAppId: UInt64? = nil) {
            self.name = name
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case subAppId = "SubAppId"
        }
    }

    /// DeleteProcedureTemplate返回参数结构体
    public struct DeleteProcedureTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除任务流模板
    ///
    /// 删除用户自定义的任务流模板。
    @inlinable @discardableResult
    public func deleteProcedureTemplate(_ input: DeleteProcedureTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProcedureTemplateResponse> {
        self.client.execute(action: "DeleteProcedureTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务流模板
    ///
    /// 删除用户自定义的任务流模板。
    @inlinable @discardableResult
    public func deleteProcedureTemplate(_ input: DeleteProcedureTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProcedureTemplateResponse {
        try await self.client.execute(action: "DeleteProcedureTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务流模板
    ///
    /// 删除用户自定义的任务流模板。
    @inlinable @discardableResult
    public func deleteProcedureTemplate(name: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProcedureTemplateResponse> {
        self.deleteProcedureTemplate(DeleteProcedureTemplateRequest(name: name, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除任务流模板
    ///
    /// 删除用户自定义的任务流模板。
    @inlinable @discardableResult
    public func deleteProcedureTemplate(name: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProcedureTemplateResponse {
        try await self.deleteProcedureTemplate(DeleteProcedureTemplateRequest(name: name, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
