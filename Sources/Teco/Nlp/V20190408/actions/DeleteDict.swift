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

extension Nlp {
    /// DeleteDict请求参数结构体
    public struct DeleteDictRequest: TCRequestModel {
        /// 要删除的自定义词库ID。
        public let dictId: String

        public init(dictId: String) {
            self.dictId = dictId
        }

        enum CodingKeys: String, CodingKey {
            case dictId = "DictId"
        }
    }

    /// DeleteDict返回参数结构体
    public struct DeleteDictResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除自定义词库
    ///
    /// 删除自定义词库，会附带相应删除词库包含的所有词条。
    @inlinable @discardableResult
    public func deleteDict(_ input: DeleteDictRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDictResponse> {
        self.client.execute(action: "DeleteDict", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义词库
    ///
    /// 删除自定义词库，会附带相应删除词库包含的所有词条。
    @inlinable @discardableResult
    public func deleteDict(_ input: DeleteDictRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDictResponse {
        try await self.client.execute(action: "DeleteDict", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义词库
    ///
    /// 删除自定义词库，会附带相应删除词库包含的所有词条。
    @inlinable @discardableResult
    public func deleteDict(dictId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDictResponse> {
        self.deleteDict(DeleteDictRequest(dictId: dictId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自定义词库
    ///
    /// 删除自定义词库，会附带相应删除词库包含的所有词条。
    @inlinable @discardableResult
    public func deleteDict(dictId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDictResponse {
        try await self.deleteDict(DeleteDictRequest(dictId: dictId), region: region, logger: logger, on: eventLoop)
    }
}
