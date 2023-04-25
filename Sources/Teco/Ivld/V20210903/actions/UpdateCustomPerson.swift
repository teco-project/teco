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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ivld {
    /// UpdateCustomPerson请求参数结构体
    public struct UpdateCustomPersonRequest: TCRequestModel {
        /// 待更新的自定义人物Id
        public let personId: String

        /// 更新后的自定义人物名称，如为空则不更新
        public let name: String?

        /// 更新后的自定义人物简介，如为空则不更新
        public let basicInfo: String?

        /// 更新后的分类信息，如为空则不更新
        public let categoryId: String?

        public init(personId: String, name: String? = nil, basicInfo: String? = nil, categoryId: String? = nil) {
            self.personId = personId
            self.name = name
            self.basicInfo = basicInfo
            self.categoryId = categoryId
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case name = "Name"
            case basicInfo = "BasicInfo"
            case categoryId = "CategoryId"
        }
    }

    /// UpdateCustomPerson返回参数结构体
    public struct UpdateCustomPersonResponse: TCResponseModel {
        /// 成功更新的自定义人物Id
        public let personId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case requestId = "RequestId"
        }
    }

    /// 更新自定义人物信息
    ///
    /// 更新自定义人物信息，包括姓名，简要信息，分类信息等
    @inlinable
    public func updateCustomPerson(_ input: UpdateCustomPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCustomPersonResponse> {
        self.client.execute(action: "UpdateCustomPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新自定义人物信息
    ///
    /// 更新自定义人物信息，包括姓名，简要信息，分类信息等
    @inlinable
    public func updateCustomPerson(_ input: UpdateCustomPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCustomPersonResponse {
        try await self.client.execute(action: "UpdateCustomPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新自定义人物信息
    ///
    /// 更新自定义人物信息，包括姓名，简要信息，分类信息等
    @inlinable
    public func updateCustomPerson(personId: String, name: String? = nil, basicInfo: String? = nil, categoryId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCustomPersonResponse> {
        self.updateCustomPerson(.init(personId: personId, name: name, basicInfo: basicInfo, categoryId: categoryId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新自定义人物信息
    ///
    /// 更新自定义人物信息，包括姓名，简要信息，分类信息等
    @inlinable
    public func updateCustomPerson(personId: String, name: String? = nil, basicInfo: String? = nil, categoryId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCustomPersonResponse {
        try await self.updateCustomPerson(.init(personId: personId, name: name, basicInfo: basicInfo, categoryId: categoryId), region: region, logger: logger, on: eventLoop)
    }
}
