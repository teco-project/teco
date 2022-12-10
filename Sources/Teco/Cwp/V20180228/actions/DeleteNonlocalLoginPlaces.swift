//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cwp {
    /// 删除异地登录记录
    ///
    /// 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。
    @inlinable
    public func deleteNonlocalLoginPlaces(_ input: DeleteNonlocalLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNonlocalLoginPlacesResponse > {
        self.client.execute(action: "DeleteNonlocalLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除异地登录记录
    ///
    /// 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。
    @inlinable
    public func deleteNonlocalLoginPlaces(_ input: DeleteNonlocalLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "DeleteNonlocalLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteNonlocalLoginPlaces请求参数结构体
    public struct DeleteNonlocalLoginPlacesRequest: TCRequestModel {
        /// 删除异地登录事件的方式，可选值："Ids"、"Ip"、"All"，默认为Ids
        public let delType: String?
        
        /// 异地登录事件ID数组。DelType为Ids或DelType未填时此项必填
        public let ids: [UInt64]?
        
        /// 异地登录事件的Ip。DelType为Ip时必填
        public let ip: [String]?
        
        /// 主机Uuid
        public let uuid: String?
        
        public init (delType: String?, ids: [UInt64]?, ip: [String]?, uuid: String?) {
            self.delType = delType
            self.ids = ids
            self.ip = ip
            self.uuid = uuid
        }
        
        enum CodingKeys: String, CodingKey {
            case delType = "DelType"
            case ids = "Ids"
            case ip = "Ip"
            case uuid = "Uuid"
        }
    }
    
    /// DeleteNonlocalLoginPlaces返回参数结构体
    public struct DeleteNonlocalLoginPlacesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}