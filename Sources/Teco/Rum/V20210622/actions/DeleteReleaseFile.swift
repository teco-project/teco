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

extension Rum {
    /// DeleteReleaseFile请求参数结构体
    public struct DeleteReleaseFileRequest: TCRequestModel {
        /// 文件 id
        public let id: Int64

        public init(id: Int64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
        }
    }

    /// DeleteReleaseFile返回参数结构体
    public struct DeleteReleaseFileResponse: TCResponseModel {
        /// 接口请求返回字符串
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 删除发布文件
    ///
    /// 将对应 sourcemap 文件删除
    @inlinable
    public func deleteReleaseFile(_ input: DeleteReleaseFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReleaseFileResponse> {
        self.client.execute(action: "DeleteReleaseFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除发布文件
    ///
    /// 将对应 sourcemap 文件删除
    @inlinable
    public func deleteReleaseFile(_ input: DeleteReleaseFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReleaseFileResponse {
        try await self.client.execute(action: "DeleteReleaseFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除发布文件
    ///
    /// 将对应 sourcemap 文件删除
    @inlinable
    public func deleteReleaseFile(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReleaseFileResponse> {
        self.deleteReleaseFile(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除发布文件
    ///
    /// 将对应 sourcemap 文件删除
    @inlinable
    public func deleteReleaseFile(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReleaseFileResponse {
        try await self.deleteReleaseFile(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
