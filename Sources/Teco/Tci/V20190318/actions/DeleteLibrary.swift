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

extension Tci {
    /// DeleteLibrary请求参数结构体
    public struct DeleteLibraryRequest: TCRequest {
        /// 人员库唯一标识符
        public let libraryId: String

        public init(libraryId: String) {
            self.libraryId = libraryId
        }

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
        }
    }

    /// DeleteLibrary返回参数结构体
    public struct DeleteLibraryResponse: TCResponse {
        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员库名称
        public let libraryName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case libraryName = "LibraryName"
            case requestId = "RequestId"
        }
    }

    /// 删除人员库
    @inlinable
    public func deleteLibrary(_ input: DeleteLibraryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLibraryResponse> {
        self.client.execute(action: "DeleteLibrary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除人员库
    @inlinable
    public func deleteLibrary(_ input: DeleteLibraryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLibraryResponse {
        try await self.client.execute(action: "DeleteLibrary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除人员库
    @inlinable
    public func deleteLibrary(libraryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLibraryResponse> {
        self.deleteLibrary(.init(libraryId: libraryId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除人员库
    @inlinable
    public func deleteLibrary(libraryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLibraryResponse {
        try await self.deleteLibrary(.init(libraryId: libraryId), region: region, logger: logger, on: eventLoop)
    }
}
