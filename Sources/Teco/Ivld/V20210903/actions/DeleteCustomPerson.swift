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

extension Ivld {
    /// DeleteCustomPerson请求参数结构体
    public struct DeleteCustomPersonRequest: TCRequestModel {
        /// 待删除的自定义人物ID
        public let personId: String

        public init(personId: String) {
            self.personId = personId
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
        }
    }

    /// DeleteCustomPerson返回参数结构体
    public struct DeleteCustomPersonResponse: TCResponseModel {
        /// 已删除的自定义人物Id
        public let personId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case requestId = "RequestId"
        }
    }

    /// 删除自定义人物
    @inlinable
    public func deleteCustomPerson(_ input: DeleteCustomPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomPersonResponse> {
        self.client.execute(action: "DeleteCustomPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义人物
    @inlinable
    public func deleteCustomPerson(_ input: DeleteCustomPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomPersonResponse {
        try await self.client.execute(action: "DeleteCustomPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义人物
    @inlinable
    public func deleteCustomPerson(personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomPersonResponse> {
        self.deleteCustomPerson(.init(personId: personId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自定义人物
    @inlinable
    public func deleteCustomPerson(personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomPersonResponse {
        try await self.deleteCustomPerson(.init(personId: personId), region: region, logger: logger, on: eventLoop)
    }
}
