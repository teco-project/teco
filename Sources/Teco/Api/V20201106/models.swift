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

import TecoCore

extension Api {
    /// 地域信息
    public struct RegionInfo: TCOutputModel {
        /// 地域名称，例如，ap-guangzhou
        public let region: String?

        /// 地域描述，例如，华南地区(广州)
        public let regionName: String?

        /// 地域是否可用状态
        public let regionState: String?

        /// 控制台类型，api调用时默认null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionTypeMC: Int64?

        /// 不同语言的地区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let locationMC: String?

        /// 控制台展示的地域描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionNameMC: String?

        /// 控制台展示的RegionId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionIdMC: String?

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case regionName = "RegionName"
            case regionState = "RegionState"
            case regionTypeMC = "RegionTypeMC"
            case locationMC = "LocationMC"
            case regionNameMC = "RegionNameMC"
            case regionIdMC = "RegionIdMC"
        }
    }

    /// 地域管理系统支持的产品信息
    public struct RegionProduct: TCOutputModel {
        /// 产品名称，如cvm
        public let name: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// 可用区信息
    public struct ZoneInfo: TCOutputModel {
        /// 可用区名称，例如，ap-guangzhou-3
        /// 全网可用区名称如下：
        /// <li> ap-chongqing-1 </li>
        /// <li> ap-seoul-1 </li>
        /// <li> ap-seoul-2 </li>
        /// <li> ap-chengdu-1 </li>
        /// <li> ap-chengdu-2 </li>
        /// <li> ap-hongkong-1 </li>
        /// <li> ap-hongkong-2 </li>
        /// <li> ap-shenzhen-fsi-1 </li>
        /// <li> ap-shenzhen-fsi-2 </li>
        /// <li> ap-shenzhen-fsi-3 </li>
        /// <li> ap-guangzhou-1（售罄）</li>
        /// <li> ap-guangzhou-2（售罄）</li>
        /// <li> ap-guangzhou-3 </li>
        /// <li> ap-guangzhou-4 </li>
        /// <li> ap-guangzhou-6 </li>
        /// <li> ap-tokyo-1 </li>
        /// <li> ap-singapore-1 </li>
        /// <li> ap-singapore-2 </li>
        /// <li> ap-shanghai-fsi-1 </li>
        /// <li> ap-shanghai-fsi-2 </li>
        /// <li> ap-shanghai-fsi-3 </li>
        /// <li> ap-bangkok-1 </li>
        /// <li> ap-shanghai-1（售罄） </li>
        /// <li> ap-shanghai-2 </li>
        /// <li> ap-shanghai-3 </li>
        /// <li> ap-shanghai-4 </li>
        /// <li> ap-shanghai-5 </li>
        /// <li> ap-mumbai-1 </li>
        /// <li> ap-mumbai-2 </li>
        /// <li> eu-moscow-1 </li>
        /// <li> ap-beijing-1 </li>
        /// <li> ap-beijing-2 </li>
        /// <li> ap-beijing-3 </li>
        /// <li> ap-beijing-4 </li>
        /// <li> ap-beijing-5 </li>
        /// <li> na-siliconvalley-1 </li>
        /// <li> na-siliconvalley-2 </li>
        /// <li> eu-frankfurt-1 </li>
        /// <li> na-toronto-1 </li>
        /// <li> na-ashburn-1 </li>
        /// <li> na-ashburn-2 </li>
        /// <li> ap-nanjing-1 </li>
        /// <li> ap-nanjing-2 </li>
        public let zone: String

        /// 可用区描述，例如，广州三区
        public let zoneName: String

        /// 可用区ID
        public let zoneId: String

        /// 可用区状态，包含AVAILABLE和UNAVAILABLE。AVAILABLE代表可用，UNAVAILABLE代表不可用。
        public let zoneState: String

        /// 父级zone
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentZone: String?

        /// 父级可用区ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentZoneId: String?

        /// 父级可用区描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentZoneName: String?

        /// zone类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zoneType: String?

        /// 控制台类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machineRoomTypeMC: String?

        /// 和ZoneId一样，适用于控制台调用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zoneIdMC: String?

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case zoneName = "ZoneName"
            case zoneId = "ZoneId"
            case zoneState = "ZoneState"
            case parentZone = "ParentZone"
            case parentZoneId = "ParentZoneId"
            case parentZoneName = "ParentZoneName"
            case zoneType = "ZoneType"
            case machineRoomTypeMC = "MachineRoomTypeMC"
            case zoneIdMC = "ZoneIdMC"
        }
    }
}
