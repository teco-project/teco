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

extension Dayu {
    /// ModifyDDoSLevel请求参数结构体
    public struct ModifyDDoSLevelRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// =get表示读取防护等级；=set表示修改防护等级
        public let method: String

        /// 防护等级，取值[low,middle,high]；当Method=set时必填
        public let dDoSLevel: String?

        public init(business: String, id: String, method: String, dDoSLevel: String? = nil) {
            self.business = business
            self.id = id
            self.method = method
            self.dDoSLevel = dDoSLevel
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case method = "Method"
            case dDoSLevel = "DDoSLevel"
        }
    }

    /// ModifyDDoSLevel返回参数结构体
    public struct ModifyDDoSLevelResponse: TCResponseModel {
        /// 资源ID
        public let id: String

        /// 防护等级，取值[low,middle,high]
        public let dDoSLevel: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case dDoSLevel = "DDoSLevel"
            case requestId = "RequestId"
        }
    }

    /// 修改DDoSIP防护等级
    ///
    /// 读取或修改DDoS的防护等级
    @inlinable
    public func modifyDDoSLevel(_ input: ModifyDDoSLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSLevelResponse> {
        self.client.execute(action: "ModifyDDoSLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DDoSIP防护等级
    ///
    /// 读取或修改DDoS的防护等级
    @inlinable
    public func modifyDDoSLevel(_ input: ModifyDDoSLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSLevelResponse {
        try await self.client.execute(action: "ModifyDDoSLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DDoSIP防护等级
    ///
    /// 读取或修改DDoS的防护等级
    @inlinable
    public func modifyDDoSLevel(business: String, id: String, method: String, dDoSLevel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSLevelResponse> {
        self.modifyDDoSLevel(ModifyDDoSLevelRequest(business: business, id: id, method: method, dDoSLevel: dDoSLevel), region: region, logger: logger, on: eventLoop)
    }

    /// 修改DDoSIP防护等级
    ///
    /// 读取或修改DDoS的防护等级
    @inlinable
    public func modifyDDoSLevel(business: String, id: String, method: String, dDoSLevel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSLevelResponse {
        try await self.modifyDDoSLevel(ModifyDDoSLevelRequest(business: business, id: id, method: method, dDoSLevel: dDoSLevel), region: region, logger: logger, on: eventLoop)
    }
}
