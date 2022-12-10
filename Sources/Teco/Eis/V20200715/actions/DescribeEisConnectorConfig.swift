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

extension Eis {
    /// 获取连接器配置参数
    ///
    /// 获取连接器配置参数
    @inlinable
    public func describeEisConnectorConfig(_ input: DescribeEisConnectorConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEisConnectorConfigResponse > {
        self.client.execute(action: "DescribeEisConnectorConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取连接器配置参数
    ///
    /// 获取连接器配置参数
    @inlinable
    public func describeEisConnectorConfig(_ input: DescribeEisConnectorConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEisConnectorConfigResponse {
        try await self.client.execute(action: "DescribeEisConnectorConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEisConnectorConfig请求参数结构体
    public struct DescribeEisConnectorConfigRequest: TCRequestModel {
        /// 连接器名称
        public let connectorName: String
        
        /// 连接器版本
        public let connectorVersion: String
        
        public init (connectorName: String, connectorVersion: String) {
            self.connectorName = connectorName
            self.connectorVersion = connectorVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case connectorName = "ConnectorName"
            case connectorVersion = "ConnectorVersion"
        }
    }
    
    /// DescribeEisConnectorConfig返回参数结构体
    public struct DescribeEisConnectorConfigResponse: TCResponseModel {
        /// 连接器配置参数描述（json结构），示例如下：
        /// {
        ///     "attributes":{
        ///         "description":"测试", // 连接器的描述
        ///         "displayName":"测试", // 连接器的展示名
        ///         "name":"test", // 连接器的名称
        ///         "version":"1.0.0" // 连接器的版本号
        ///     },
        ///     "properties":[
        ///         {
        ///             "attributes":{
        ///                 "displayName":"企业ID", // 参数的展示名
        ///                 "name":"para1", // 参数名
        ///                 "required":"true", // 是否必填
        ///                 "type":"int" // 参数的类型
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"成员管理密钥",
        ///                 "name":"para2",
        ///                 "required":"true",
        ///                 "type":"float"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"应用管理密钥",
        ///                 "name":"para3",
        ///                 "required":"true",
        ///                 "type":"string"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"企业ID",
        ///                 "name":"para4",
        ///                 "required":"true",
        ///                 "type":"decimal"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"成员管理密钥",
        ///                 "name":"para5",
        ///                 "required":"true",
        ///                 "type":"bool"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"应用管理密钥",
        ///                 "name":"para6",
        ///                 "required":"true",
        ///                 "type":"date"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"企业ID",
        ///                 "name":"para7",
        ///                 "required":"true",
        ///                 "type":"time"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"成员管理密钥",
        ///                 "name":"para8",
        ///                 "required":"true",
        ///                 "type":"datetime"
        ///             }
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"应用管理密钥",
        ///                 "name":"para9",
        ///                 "required":"true",
        ///                 "type":"map"
        ///             },
        ///             "children":[
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"key",
        ///                         "name":"key",
        ///                         "required":"true",
        ///                         "type":"string"
        ///                     }
        ///                 },
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"value",
        ///                         "name":"value",
        ///                         "required":"true",
        ///                         "type":"any"
        ///                     }
        ///                 }
        ///             ]
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"企业ID",
        ///                 "name":"para10",
        ///                 "required":"true",
        ///                 "type":"list" // list，list里元素的类型是结构体，children里是结构体的描述
        ///             },
        ///             "children":[
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"field1",
        ///                         "name":"field1",
        ///                         "required":"true",
        ///                         "type":"string"
        ///                     }
        ///                 },
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"field2",
        ///                         "name":"field2",
        ///                         "required":"true",
        ///                         "type":"any"
        ///                     }
        ///                 }
        ///             ]
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"成员管理密钥",
        ///                 "name":"para11",
        ///                 "required":"true",
        ///                 "type":"struct"
        ///             },
        ///             "children":[
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"field1", // 结构体属性的展示名
        ///                         "name":"field1", // 结构体属性的名称
        ///                         "required":"true", // 是否必填
        ///                         "type":"string" // 属性的类型
        ///                     }
        ///                 },
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"field2",
        ///                         "name":"field2",
        ///                         "required":"true",
        ///                         "type":"any"
        ///                     }
        ///                 }
        ///             ]
        ///         },
        ///         {
        ///             "attributes":{
        ///                 "displayName":"应用管理密钥",
        ///                 "name":"para12",
        ///                 "required":"true",
        ///                 "type":"enum"
        ///             },
        ///             "children":[
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"PC", // 枚举值的展示名
        ///                         "name":"PC" // 枚举值的名称
        ///                     }
        ///                 },
        ///                 {
        ///                     "attributes":{
        ///                         "displayName":"MAC",
        ///                         "name":"MAC"
        ///                     }
        ///                 }
        ///             ]
        ///         }
        ///     ]
        /// }
        public let connectorParameter: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case connectorParameter = "ConnectorParameter"
            case requestId = "RequestId"
        }
    }
}