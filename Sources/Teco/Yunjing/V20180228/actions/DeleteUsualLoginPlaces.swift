//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Yunjing {
    /// 删除常用登录地
    ///
    /// 本接口（DeleteUsualLoginPlaces）用于删除常用登录地。
    @inlinable
    public func deleteUsualLoginPlaces(_ input: DeleteUsualLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteUsualLoginPlacesResponse > {
        self.client.execute(action: "DeleteUsualLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除常用登录地
    ///
    /// 本接口（DeleteUsualLoginPlaces）用于删除常用登录地。
    @inlinable
    public func deleteUsualLoginPlaces(_ input: DeleteUsualLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsualLoginPlacesResponse {
        try await self.client.execute(action: "DeleteUsualLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteUsualLoginPlaces请求参数结构体
    public struct DeleteUsualLoginPlacesRequest: TCRequestModel {
        /// 云镜客户端Uuid
        public let uuid: String
        
        /// 已添加常用登录地城市ID数组
        public let cityIds: [UInt64]
        
        public init (uuid: String, cityIds: [UInt64]) {
            self.uuid = uuid
            self.cityIds = cityIds
        }
        
        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case cityIds = "CityIds"
        }
    }
    
    /// DeleteUsualLoginPlaces返回参数结构体
    public struct DeleteUsualLoginPlacesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
