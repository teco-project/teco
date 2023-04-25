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

extension Iai {
    /// ModifyPersonBaseInfo请求参数结构体
    public struct ModifyPersonBaseInfoRequest: TCRequestModel {
        /// 人员ID
        public let personId: String

        /// 需要修改的人员名称
        public let personName: String?

        /// 需要修改的人员性别
        public let gender: Int64?

        public init(personId: String, personName: String? = nil, gender: Int64? = nil) {
            self.personId = personId
            self.personName = personName
            self.gender = gender
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case personName = "PersonName"
            case gender = "Gender"
        }
    }

    /// ModifyPersonBaseInfo返回参数结构体
    public struct ModifyPersonBaseInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改人员基础信息
    ///
    /// 修改人员信息，包括名称、性别等。人员名称和性别修改会同步到包含该人员的所有人员库。
    @inlinable @discardableResult
    public func modifyPersonBaseInfo(_ input: ModifyPersonBaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonBaseInfoResponse> {
        self.client.execute(action: "ModifyPersonBaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改人员基础信息
    ///
    /// 修改人员信息，包括名称、性别等。人员名称和性别修改会同步到包含该人员的所有人员库。
    @inlinable @discardableResult
    public func modifyPersonBaseInfo(_ input: ModifyPersonBaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonBaseInfoResponse {
        try await self.client.execute(action: "ModifyPersonBaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改人员基础信息
    ///
    /// 修改人员信息，包括名称、性别等。人员名称和性别修改会同步到包含该人员的所有人员库。
    @inlinable @discardableResult
    public func modifyPersonBaseInfo(personId: String, personName: String? = nil, gender: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonBaseInfoResponse> {
        self.modifyPersonBaseInfo(.init(personId: personId, personName: personName, gender: gender), region: region, logger: logger, on: eventLoop)
    }

    /// 修改人员基础信息
    ///
    /// 修改人员信息，包括名称、性别等。人员名称和性别修改会同步到包含该人员的所有人员库。
    @inlinable @discardableResult
    public func modifyPersonBaseInfo(personId: String, personName: String? = nil, gender: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonBaseInfoResponse {
        try await self.modifyPersonBaseInfo(.init(personId: personId, personName: personName, gender: gender), region: region, logger: logger, on: eventLoop)
    }
}
