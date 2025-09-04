view: postcode {
  derived_table: {
    sql:
      SELECT '2000' AS postcode, 'Sydney' AS city, 'NSW' AS state UNION ALL
      SELECT '2600' AS postcode, 'Canberra' AS city, 'ACT' AS state UNION ALL
      SELECT '3000' AS postcode, 'Melbourne' AS city, 'VIC' AS state UNION ALL
      SELECT '4000' AS postcode, 'Brisbane' AS city, 'QLD' AS state UNION ALL
      SELECT '5000' AS postcode, 'Adelaide' AS city, 'SA' AS state UNION ALL
      SELECT '6000' AS postcode, 'Perth' AS city, 'WA' AS state UNION ALL
      SELECT '7000' AS postcode, 'Hobart' AS city, 'TAS' AS state UNION ALL
      SELECT '0800' AS postcode, 'Darwin' AS city, 'NT' AS state
      ;;
      persist_for: "24 hours"
    }

    dimension: postcode {
      primary_key: yes
      type: string
      sql: ${TABLE}.postcode ;;
      map_layer_name: my_neighborhood_layer
    }

    dimension: city {
      type: string
      sql: ${TABLE}.city ;;
    }

    dimension: state {
      type: string
      sql: ${TABLE}.state ;;
    }
}
