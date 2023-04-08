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

extension Ecm {
    /// ModifyVpcAttribute请求参数结构体
    public struct ModifyVpcAttributeRequest: TCRequestModel {
        /// VPC实例ID。形如：vpc-f49l6u0z。
        public let vpcId: String

        /// ECM 地域
        public let ecmRegion: String

        /// 私有网络名称，可任意命名，但不得超过60个字符。
        public let vpcName: String?

        /// 标签
        public let tags: [Tag]?

        /// 私有网络描述
        public let description: String?

        public init(vpcId: String, ecmRegion: String, vpcName: String? = nil, tags: [Tag]? = nil, description: String? = nil) {
            self.vpcId = vpcId
            self.ecmRegion = ecmRegion
            self.vpcName = vpcName
            self.tags = tags
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ecmRegion = "EcmRegion"
            case vpcName = "VpcName"
            case tags = "Tags"
            case description = "Description"
        }
    }

    /// ModifyVpcAttribute返回参数结构体
    public struct ModifyVpcAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改VPC属性
    ///
    /// 修改私有网络（VPC）的相关属性
    @inlinable @discardableResult
    public func modifyVpcAttribute(_ input: ModifyVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcAttributeResponse> {
        self.client.execute(action: "ModifyVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPC属性
    ///
    /// 修改私有网络（VPC）的相关属性
    @inlinable @discardableResult
    public func modifyVpcAttribute(_ input: ModifyVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcAttributeResponse {
        try await self.client.execute(action: "ModifyVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPC属性
    ///
    /// 修改私有网络（VPC）的相关属性
    @inlinable @discardableResult
    public func modifyVpcAttribute(vpcId: String, ecmRegion: String, vpcName: String? = nil, tags: [Tag]? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcAttributeResponse> {
        self.modifyVpcAttribute(.init(vpcId: vpcId, ecmRegion: ecmRegion, vpcName: vpcName, tags: tags, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VPC属性
    ///
    /// 修改私有网络（VPC）的相关属性
    @inlinable @discardableResult
    public func modifyVpcAttribute(vpcId: String, ecmRegion: String, vpcName: String? = nil, tags: [Tag]? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcAttributeResponse {
        try await self.modifyVpcAttribute(.init(vpcId: vpcId, ecmRegion: ecmRegion, vpcName: vpcName, tags: tags, description: description), region: region, logger: logger, on: eventLoop)
    }
}
