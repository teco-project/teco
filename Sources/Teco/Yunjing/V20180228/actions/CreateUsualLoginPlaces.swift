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
    /// CreateUsualLoginPlaces请求参数结构体
    public struct CreateUsualLoginPlacesRequest: TCRequestModel {
        /// 云镜客户端UUID数组。
        public let uuids: [String]
        
        /// 登录地域信息数组。
        public let places: [Place]
        
        public init (uuids: [String], places: [Place]) {
            self.uuids = uuids
            self.places = places
        }
        
        enum CodingKeys: String, CodingKey {
            case uuids = "Uuids"
            case places = "Places"
        }
    }
    
    /// CreateUsualLoginPlaces返回参数结构体
    public struct CreateUsualLoginPlacesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 添加常用登录地
    ///
    /// 此接口（CreateUsualLoginPlaces）用于添加常用登录地。
    @inlinable
    public func createUsualLoginPlaces(_ input: CreateUsualLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateUsualLoginPlacesResponse > {
        self.client.execute(action: "CreateUsualLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加常用登录地
    ///
    /// 此接口（CreateUsualLoginPlaces）用于添加常用登录地。
    @inlinable
    public func createUsualLoginPlaces(_ input: CreateUsualLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUsualLoginPlacesResponse {
        try await self.client.execute(action: "CreateUsualLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
