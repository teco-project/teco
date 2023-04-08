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
    /// ModifyLibrary请求参数结构体
    public struct ModifyLibraryRequest: TCRequestModel {
        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员库名称
        public let libraryName: String

        public init(libraryId: String, libraryName: String) {
            self.libraryId = libraryId
            self.libraryName = libraryName
        }

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case libraryName = "LibraryName"
        }
    }

    /// ModifyLibrary返回参数结构体
    public struct ModifyLibraryResponse: TCResponseModel {
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

    /// 修改人员库信息
    @inlinable
    public func modifyLibrary(_ input: ModifyLibraryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLibraryResponse> {
        self.client.execute(action: "ModifyLibrary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改人员库信息
    @inlinable
    public func modifyLibrary(_ input: ModifyLibraryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLibraryResponse {
        try await self.client.execute(action: "ModifyLibrary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改人员库信息
    @inlinable
    public func modifyLibrary(libraryId: String, libraryName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLibraryResponse> {
        self.modifyLibrary(.init(libraryId: libraryId, libraryName: libraryName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改人员库信息
    @inlinable
    public func modifyLibrary(libraryId: String, libraryName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLibraryResponse {
        try await self.modifyLibrary(.init(libraryId: libraryId, libraryName: libraryName), region: region, logger: logger, on: eventLoop)
    }
}
