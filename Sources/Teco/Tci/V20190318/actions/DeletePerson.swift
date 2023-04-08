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
    /// DeletePerson请求参数结构体
    public struct DeletePersonRequest: TCRequestModel {
        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员唯一标识符
        public let personId: String

        public init(libraryId: String, personId: String) {
            self.libraryId = libraryId
            self.personId = personId
        }

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case personId = "PersonId"
        }
    }

    /// DeletePerson返回参数结构体
    public struct DeletePersonResponse: TCResponseModel {
        /// 人脸信息
        public let faceInfoSet: [FaceInfo]

        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员唯一标识符
        public let personId: String

        /// 人员名称
        public let personName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case faceInfoSet = "FaceInfoSet"
            case libraryId = "LibraryId"
            case personId = "PersonId"
            case personName = "PersonName"
            case requestId = "RequestId"
        }
    }

    /// 删除人员
    @inlinable
    public func deletePerson(_ input: DeletePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonResponse> {
        self.client.execute(action: "DeletePerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除人员
    @inlinable
    public func deletePerson(_ input: DeletePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonResponse {
        try await self.client.execute(action: "DeletePerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除人员
    @inlinable
    public func deletePerson(libraryId: String, personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonResponse> {
        self.deletePerson(.init(libraryId: libraryId, personId: personId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除人员
    @inlinable
    public func deletePerson(libraryId: String, personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonResponse {
        try await self.deletePerson(.init(libraryId: libraryId, personId: personId), region: region, logger: logger, on: eventLoop)
    }
}
